---
type: note
created: 2026-01-27
modified: 2026-01-27 19:56
tags:
categories:
  - web development
  - writing
  - art
  - hacks
  - til
  - jobs
  - tips
  - work
projects:
  - website
priority:
permalink:
---
---

# Functionality Additions
[[Personal website next step]]
- [Dark mode transition](https://freefrontend.com/code/pure-css-mix-blend-mode-dark-toggle-2026-01-18/)
- 
### [[Well Being Overall Score]]

# Admin
### Link animation
To switch on/off edit css file:
```css
:root {

--enable-link-animation: 1; /* Change to 0 to disable */

}
```
### Monitoring 
Daily cron job monitoring[^1] at [healthchecks](https://healthchecks.io/checks/25dd6041-035e-4068-988d-dbc41c3eb5d4/details/). This should send email if no ping for 24 hours.

Can also check the logs locally anytime:
- `cat /tmp/calendar-rollup.err` — should be empty
- `cat /tmp/calendar-rollup.log` — should be empty (success output goes to `/dev/null`)

[^1]: Technically not a cron job - uses `launchd`

### Git
**Push commits**
```bash
cd /Users/djw/Documents/pCloud_synced/Website/personal_website_2026
git add .
git commit -m "Your commit message"
git push
```

# Going Live
### Move backend to server
Deploy your backend to a server that runs 24/7 (DigitalOcean, AWS, Hetzner, etc.), then:

- **Update the launchd job to point to your live URL: https://yourdomain.com/admin/calendar/rollup**
	- The launchd job `calendar-rollup` stays on your Mac, but calls the remote server
	- Backend runs continuously on the server
	- **ALT: Move the cron job to the server**
		- Deploy backend to a Linux server
		- Use systemd timers (Linux equivalent of launchd) to run the job on the server itself
		- You already have systemd config files in `backend/systemd/`
	