---
title: expFactory
aliases: [expFactory]
summary: 
created: 2021-04-28 10:50
modified: 2021-04-28 10:50
tags: [platform]
---
[[thesis]]
[[experiment]]
[[thesis experiment psychological tasks]]
[[thesis experiment questionnaires]]
[[methods]]
[[programming]]
[[thesis stage 2 - Battery]]

# Clean up
Remove all lurking docker containers
First
`docker stop <container>`
`docker rm <container>`
Then
`docker system prune --all`
Then recreate Docker file, build, and run

# Notes

[Quickstart Guide](https://expfactory.github.io/generate#quick-start)

Select a battery of experiments and build [[docker]] container.

**GENERATE DOCKER FILE**
`docker run -v $PWD:/data quay.io/vanessa/expfactory-builder:test-12-9-2020 build digit-span spatial-span tower-of-london test-task`
- ==suggestion==: add `LABELS` to your Dockerfile (see [Quickstart Guide](https://expfactory.github.io/generate#quick-start))

**BUILD CONTAINER**
`docker build -t expfactory/experiments .`
- ==suggestion==: replace `expfactory/experiments` with `username/reponame` (**why doesn't this work??**)

**START CONTAINER**
docker run -v /tmp/my-experiment/data/:/scif/data \
           -d -p 80:80 \
           expfactory/experiments start 

## Create Survey^[Link: https://github.com/expfactory/survey-generator]
1. Create standard `config.json` file ([example](https://expfactory.github.io/contribute#the-experiment-config))
2. Put in folder with `survey.tsv`
3. Run `$ docker run -v $PWD:/data expfactory/survey-generator start`
4. Test in web browser `python -m http.server 9999`^[Alternatively you can just run it in the browser]

[New version of the directions](https://expfactory.github.io/integration-surveys) on how to create a new survey.

## Digital Ocean + ExpFactory
[Setup Guide](https://expfactory.github.io/generate-https)

#### SSH into droplet
```bash
ssh -XY root@165.22.70.7
```
**pw** 4EeYbY^yY%3sHq5j%v2s

**SSH KEY**
**name**: expfactory-key
**passphrase**: expfactory-baby


#### Personal hostname
> **note** presently this does not seem to be working...so need to just use IP address

Hostname that directs to the ip address via DDNS service with [DYNU](https://www.dynu.com/)
`https://djw-expfactory.webredirect.org`

#### Renewing certificates (for hostname)
You will get emails when you need to renew.
Details [here](https://expfactory.github.io/generate-https). Go to ==Step 6. Renewal==.
**To renew**:
Before renewing you need to stop the docker container running expfactory and start nginx outside of docker.

```bash
docker stop experiment 
sudo service nginx start 
sudo certbot renew
sudo service nginx stop
```

👆I got errors running this and could not launch the docker image due to port 80 being in use and came across [this post](https://stackoverflow.com/questions/35868976/nginx-service-failed-because-the-control-process-exited)

>Try to run the following two commands:
 `sudo fuser -k 80/tcp`
 `sudo fuser -k 443/tcp`
Then execute
`sudo service nginx restart`

>If that worked, your hosting provider might be installing Apache on your server by default during a fresh install, so keep reading for a more permenant fix.

Then you need to move things...
```bash
sudo cp /etc/letsencrypt/live/djw-expfactory.webredirect.org/fullchain.pem /etc/ssl/certs/chained.pem 
sudo cp /etc/letsencrypt/live/djw-expfactory.webredirect.org/privkey.pem /etc/ssl/private/domain.key
sudo cp /etc/letsencrypt/ssl-dhparams.pem /etc/ssl/certs/dhparam.pem
```
## Tasks on ExpFactory
### 1 | Make recipe
**Notes**
- there is also a 5 min stroop

```bash
mkdir -p $HOME/sona-battery-1/data 

# notice we specify a different Dockerfile input that has https 
docker run -v $HOME/sona-battery-1:/data \
quay.io/vanessa/expfactory-builder build \
bickel-titrator
cognitive-reflection-survey
emotion-regulation
go-nogo
holt-laury-survey
probabilistic-selection
ravens
shift-task
stroop
--input build/docker/Dockerfile.https
```

### 2 | Build Container
>Suggested to first add `LABELS` to your Dockerfile. 
>A label can be any form of metadata to describe the image. 
>Look at the [label.schema](http://label-schema.org/rc1/) for inspiration.

`cd` into the directory and run:

```shell
docker build --no-cache -t expfactory/experiments .
```

### 3 | Start Container
To run our container, we will define the following variables:

-   `port`: The `-p 80:80` is telling Docker to map port 80 (the nginx web server) in the container to port 80 on our local machine. If we don’t do this, we won’t see any experiments in the browser!
-   `volumes`: The second command `-v` is telling Docker we want to ensure that the container can see (and use) the certificates on the host.

**WITH SSL**
``` shell
docker run -p 80:80 -p 443:443 \ 
	-v /etc/ssl/certs:/etc/ssl/certs:ro \ 
	-v /etc/ssl/private:/etc/ssl/private:ro \ 
	expfactory/experiments start
```

The above is telling us that the webserver is writing output to logs in `/scif/logs` in the image, and we are viewing the main log. The port `5000` that is running the Flask server is being served via gunicorn at localhost.

**DETACHED MODE**
```bash
docker run --name thesis_battery_sona -d -p 80:80 -p 443:443 \
	-v /etc/ssl/certs:/etc/ssl/certs:ro \
	-v /etc/ssl/private:/etc/ssl/private:ro \
	-v $PWD:/scif/data \
	danieljwilson/thesis_battery_sona start
```

- `--name` specifies the name of the docker instance running


### 4 | Token Creation / Participant Management
[Managing users documentation](https://expfactory.github.io/usage#managing-users)

List Current Users
```bash
docker exec <container id/name> expfactory users --list

# Actual Code
docker exec thesis_battery_sona expfactory users --list
```

Create New Users
```bash
docker exec <container id/name> expfactory users --new <integer>

#Actual Code
docker exec thesis_battery_sona expfactory users --new 100

```
Or better, as it creates a `.tsv` file:
```bash
docker exec <container id/name> expfactory users --new 3 >> participants.tsv

#Actual Code
docker exec thesis_battery_sona expfactory users --new 100 >> run2_offboarding_participants.tsv
```

Send to their version of the experiment
==for some reason this is seeming to "finish" the users experiments...==
```html
https://<your-server>/login?token=<token>
```

https://djw-expfactory.webredirect.org/login?token=<token>

# Resources
- [Parse `.json` output files](https://gist.github.com/vsoch/76d8933e3ff7e080883362b8baa4a164)
- Github **PAT** | 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

Thanks for completing the first part of the Broad Personality Assessment experiment! 🙏

To continue with the next series of questionnaires and tasks please go to this link:
https://djw-expfactory.webredirect.org/

When it asks you to enter a token enter this code:


Thanks, and let me know if you have any questions or issues!

Best,
Daniel

![[Pasted image 20221203234311.png]]


---

U of T has dev account - 

accountv holder 
cio robert cook - or whoever handles his admin
peter chung
michael spears

pass along link to email

---

FROM quay.io/vanessa/expfactory-builder:base

  

########################################

# Configure

########################################

  

ENV EXPFACTORY_STUDY_ID expfactory

ENV EXPFACTORY_SERVER localhost

ENV EXPFACTORY_CONTAINER true

ENV EXPFACTORY_DATA /scif/data

ENV EXPFACTORY_DATABASE filesystem

ENV EXPFACTORY_HEADLESS false

ENV EXPFACTORY_BASE /scif/apps

ENV EXPFACTORY_EXPERIMENT_FIRST=sona-id-entry

  

ADD startscript.sh /startscript.sh

RUN chmod u+x /startscript.sh

  

WORKDIR /opt

RUN git clone -b add/order-first-last https://github.com/expfactory/expfactory

  

WORKDIR expfactory

RUN cp script/nginx.https.conf /etc/nginx/sites-enabled/default && \

cp script/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /scif/data # saved data

RUN mkdir -p /scif/apps # experiments

RUN mkdir -p /scif/logs # gunicorn logs

RUN python3 -m pip install gunicorn

RUN cp expfactory/config_dummy.py expfactory/config.py && \

chmod u+x /opt/expfactory/script/generate_key.sh && \

/bin/bash /opt/expfactory/script/generate_key.sh /opt/expfactory/expfactory/config.py

RUN python3 setup.py install

RUN python3 -m pip install pyaml pymysql psycopg2-binary

RUN apt-get clean # tests, mysql, postgres

  

########################################

# Experiments

########################################

  
  

LABEL EXPERIMENT_five-item-ambition-survey /scif/apps/five-item-ambition-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/five-item-ambition-survey

  

LABEL EXPERIMENT_boredom-proneness-scale-short-survey /scif/apps/boredom-proneness-scale-short-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/boredom-proneness-scale-short-survey

  

LABEL EXPERIMENT_brief-sensation-seeking-survey /scif/apps/brief-sensation-seeking-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/brief-sensation-seeking-survey

  

LABEL EXPERIMENT_competitiveness-index-revised-survey /scif/apps/competitiveness-index-revised-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/competitiveness-index-revised-survey

  

LABEL EXPERIMENT_dass-21 /scif/apps/dass-21

WORKDIR /scif/apps

RUN expfactory install https://github.com/earcanal/dass-21

  

LABEL EXPERIMENT_future-time-perspective-survey /scif/apps/future-time-perspective-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/future-time-perspective-survey

  

LABEL EXPERIMENT_general-self-efficacy-survey /scif/apps/general-self-efficacy-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/general-self-efficacy-survey

  

LABEL EXPERIMENT_grit-scale-survey /scif/apps/grit-scale-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/grit-scale-survey

  

LABEL EXPERIMENT_life-orientation-test-revised-optimism-survey /scif/apps/life-orientation-test-revised-optimism-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/life-orientation-test-revised-optimism-survey

  

LABEL EXPERIMENT_maximizing-tendency-survey /scif/apps/maximizing-tendency-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/maximizing-tendency-survey

  

LABEL EXPERIMENT_mindful-attention-awareness-survey /scif/apps/mindful-attention-awareness-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/mindful-attention-awareness-survey

  

LABEL EXPERIMENT_need-for-cognition-and-faith-in-intuition-survey /scif/apps/need-for-cognition-and-faith-in-intuition-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/need-for-cognition-and-faith-in-intuition-survey

  

LABEL EXPERIMENT_perceived-stress-survey /scif/apps/perceived-stress-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/perceived-stress-survey

  

LABEL EXPERIMENT_positive-and-negative-affect-short-survey /scif/apps/positive-and-negative-affect-short-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/positive-and-negative-affect-short-survey

  

LABEL EXPERIMENT_propensity-to-plan-survey /scif/apps/propensity-to-plan-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/propensity-to-plan-survey

  

LABEL EXPERIMENT_brief-self-control-survey /scif/apps/brief-self-control-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/brief-self-control-survey

  

LABEL EXPERIMENT_trait-emotional-intelligence-short-survey /scif/apps/trait-emotional-intelligence-short-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/trait-emotional-intelligence-short-survey

  

LABEL EXPERIMENT_trait-hedonic-capacity-survey /scif/apps/trait-hedonic-capacity-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/trait-hedonic-capacity-survey

  

LABEL EXPERIMENT_trait-robustness-of-self-confidence-survey /scif/apps/trait-robustness-of-self-confidence-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/trait-robustness-of-self-confidence-survey

  

LABEL EXPERIMENT_secular-measure-of-work-ethic-survey /scif/apps/secular-measure-of-work-ethic-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/secular-measure-of-work-ethic-survey

  

LABEL EXPERIMENT_attention-network-task /scif/apps/attention-network-task

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/attention-network-task

  

LABEL EXPERIMENT_bickel-titrator /scif/apps/bickel-titrator

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/bickel-titrator

  

LABEL EXPERIMENT_cognitive-reflection-survey /scif/apps/cognitive-reflection-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/cognitive-reflection-survey

  

LABEL EXPERIMENT_emotion-regulation /scif/apps/emotion-regulation

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/emotion-regulation

  

LABEL EXPERIMENT_go-nogo /scif/apps/go-nogo

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/go-nogo

  

LABEL EXPERIMENT_holt-laury-survey /scif/apps/holt-laury-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/holt-laury-survey

  

LABEL EXPERIMENT_information-sampling-task /scif/apps/information-sampling-task

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/information-sampling-task

  

LABEL EXPERIMENT_keep-track /scif/apps/keep-track

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/keep-track

  

LABEL EXPERIMENT_plus-minus /scif/apps/plus-minus

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/plus-minus

  

LABEL EXPERIMENT_probabilistic-selection /scif/apps/probabilistic-selection

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/probabilistic-selection

  

LABEL EXPERIMENT_ravens /scif/apps/ravens

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/ravens

  

LABEL EXPERIMENT_shift-task /scif/apps/shift-task

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/shift-task

  

LABEL EXPERIMENT_simon /scif/apps/simon

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/simon

  

LABEL EXPERIMENT_simple-reaction-time /scif/apps/simple-reaction-time

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/simple-reaction-time

  

LABEL EXPERIMENT_stroop /scif/apps/stroop

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/stroop

  

LABEL EXPERIMENT_tower-of-london /scif/apps/tower-of-london

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/tower-of-london

  

LABEL EXPERIMENT_two-stage-decision /scif/apps/two-stage-decision

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/two-stage-decision

  

LABEL EXPERIMENT_berlin-numeracy-test /scif/apps/berlin-numeracy-test

WORKDIR /scif/apps

RUN expfactory install https://github.com/JuneOh710/berlin-numeracy-test

  

LABEL EXPERIMENT_cognitive-estimation-test /scif/apps/cognitive-estimation-test

WORKDIR /scif/apps

RUN expfactory install https://github.com/JuneOh710/cognitive-estimation-test

  

LABEL EXPERIMENT_effort-avoidance-task /scif/apps/effort-avoidance-task

WORKDIR /scif/apps

RUN expfactory install https://github.com/JuneOh710/effort-avoidance-task

  

LABEL EXPERIMENT_jdm-classics /scif/apps/jdm-classics

WORKDIR /scif/apps

RUN expfactory install https://github.com/juneoh710/jdm-classics

  

LABEL EXPERIMENT_semantic-verbal-fluency /scif/apps/semantic-verbal-fluency

WORKDIR /scif/apps

RUN expfactory install https://github.com/JuneOh710/semantic-verbal-fluency

  

LABEL EXPERIMENT_psychomotor-vigilance-test /scif/apps/psychomotor-vigilance-test

WORKDIR /scif/apps

RUN expfactory install https://github.com/JuneOh710/psychomotor-vigilance-test

  

LABEL EXPERIMENT_k6-survey /scif/apps/k6-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/k6-survey

  

LABEL EXPERIMENT_leisure-time-activity-survey /scif/apps/leisure-time-activity-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/leisure-time-activity-survey

  

LABEL EXPERIMENT_rosenberg-self-esteem-survey /scif/apps/rosenberg-self-esteem-survey

WORKDIR /scif/apps

RUN expfactory install https://github.com/expfactory-experiments/rosenberg-self-esteem-survey

  

# LOCAL

  

LABEL EXPERIMENT_sona-id-entry /scif/apps/sona-id-entry

ADD sona-id-entry /scif/apps/sona-id-entry

WORKDIR /scif/apps

RUN expfactory install sona-id-entry

  

LABEL EXPERIMENT_affective-conflict-resolution-task /scif/apps/affective-conflict-resolution-task

ADD affective-conflict-resolution-task /scif/apps/affective-conflict-resolution-task

WORKDIR /scif/apps

RUN expfactory install affective-conflict-resolution-task

  

ENTRYPOINT ["/bin/bash", "/startscript.sh"]

EXPOSE 5000

EXPOSE 443

EXPOSE 80