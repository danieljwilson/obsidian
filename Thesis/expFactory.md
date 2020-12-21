[[thesis]]
[[experimentation]]
[[thesis experiment psychological tasks]]
[[thesis experiment questionnaires]]
[[methods]]
[[programming]]

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

# Resources