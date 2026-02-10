---
title: my plist files
aliases: []
summary: 
created: 2021-04-28 11:00
modified: 2021-04-28 11:00
tags: []
---

[[automation]]
[[launchd osx programming]]
[[launchd]]
[[programming]]
[[cron]]

# Notes

**For [[thesis stage 3 - app|thesis app]]**:
> `/Library/LaunchAgents/thesis.djw.pull-rkstudio-data.plist`^[Currently set to run daily at 19:30]

Runs `download_rkstudio_data.sh`
Which runs
- Download new data from [[CareEvolution|RKStudio]]:
	- `download_rkstudio_data.py`
- Adherence tracking script:
	- `track_adherence.py`

---



# Resources