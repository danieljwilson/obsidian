---
title: minutiae printing books
aliases: []
summary: 
created: 2021-09-19 21:20
modified: 2021-09-19 21:20
tags: []
---


# Notes
[minutiae github directions](https://github.com/sepastian/minutiae-pdf-service/blob/master/README.md)

**ORDER TRACKING**
[Airtable](https://airtable.com/appzuSSSZMNATzzyb/tblSEtusIaa0AtmjN/viwuvmSWYK3D1d3Mp?blocks=hide)

![[Pasted image 20220120083028.png]]

PAT Token: `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`

**RUN SERVER**
```bash
cd /Users/djw/Documents/pCloud_synced/Academics/Projects/2021_minutiae/renders

docker login ghcr.io --username danieljwilson

docker pull ghcr.io/sepastian/minutiae-pdf-service:master

docker run --rm \
  -v ${PWD}/output/pdfs:/tmp/pdfs \
  -v ${PWD}/credentials.json:/run/secrets/google_app_credentials \
  -e BUCKET_NAME=minutiae-production.appspot.com \
  -e GOOGLE_APPLICATION_CREDENTIALS=/run/secrets/google_app_credentials \
  -p "8000:80" \
  ghcr.io/sepastian/minutiae-pdf-service:master

```

For external volume:
```bash
docker run --rm \
  -v /Volumes/DJW_Lacie_01/PROJECTS/minutiae/output:/tmp/pdfs \
  -v ${PWD}/credentials.json:/run/secrets/google_app_credentials \
  -e BUCKET_NAME=minutiae-production.appspot.com \
  -e GOOGLE_APPLICATION_CREDENTIALS=/run/secrets/google_app_credentials \
  -p "8000:80" \
  ghcr.io/sepastian/minutiae-pdf-service:master
```

**RENDER PDFS**
In a new terminal window:
```bash
curl \
  -X POST \
  -H "Content-Type: application/json" \
  --data '{"user_id":"jXtvmUtPb4aRNmVJ9ZcsO0eD8dA3","initials":"D J W","edition":"extended"}' \
  localhost:8000/api/jobs
  ```

```bash
curl \
  -X POST \
  -H "Content-Type: application/json" \
  --data '{"user_id":"G3pgf6gQamQExNbtOb6CCptBsCR2","initials":"M S D","edition":"standard"}' \
  localhost:8001/api/jobs
```

The `edition` parameter must be either `"standard"` or `"extended"` and defaults to `"standard"`.

# Resources
- [`.README` file](https://github.com/sepastian/minutiae-pdf-service/blob/master/README.md)

# Next


- Chris Robb - 52 - 3CuYF13KvdX96O7GiWhHCiHqbkn2 - C J R
- elliott hay (seems like the email is associated with a new cycle)
	- t8q6fAjnxoPqXCTbRZPAo9vlcsS2 - 28 - M E H
- Mark McLain - 70 - Y70z8nubhERUw3Aq8wpdjFRrE6g2 - M.O.M.
- laurarlindsay@gmail.com - 58 - WGRT3G159gQsimcYeiGstzvjY3u1 - L O L

---

18 - 

103 - CklfxBi9xETeVS9Lng258hwkUuI3 - R G
104 - G3pgf6gQamQExNbtOb6CCptBsCR2 - M S D

---

ME jXtvmUtPb4aRNmVJ9ZcsO0eD8dA3