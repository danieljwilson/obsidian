---
title: launchd osx programming
aliases: []
summary: 
created: 2021-04-08 10:11
modified: 2021-04-08 10:11
tags: [osx, programming, automation]
---
[[programming]]
[[cron]]
[[automation]]
[[thesis stage 3 - app|thesis app]]
[[my plist files]]

# Notes
[Good resource](https://davidhamann.de/2018/03/13/setting-up-a-launchagent-macos-cron/) for running `launchd`

Note that I had to:
- change permissions (I think on `.sh` file)
	- ```chmod +x /Library/Scripts/com.apple.restart.sh```
- use `bash` instead of `zsh` in shebang
- change privacy settings to get it to work ([info](https://stackoverflow.com/questions/58442951/how-to-fix-operation-not-permitted-when-i-use-launchctl-in-macos-catalina), [info2](https://apple.stackexchange.com/questions/376474/enabling-bin-bash-on-catalina-invisible-to-system-preferences-security-p))

#### Test run `.plist` file


# Resources