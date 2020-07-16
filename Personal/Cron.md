[[Programming]]
[[Automation]]
[[Productivity]]

---

# Notes
| Semantic | Syntactic |
| ---- | ---- |
| Edit cron tab | `crontab -e` |
| View cron jobs | `crontab -l` |

- Example syntax
	- `0,15,30,45 * * * * cd ~/.scripts && ./work.sh`
	- Assumes file is in `~/.scripts`

# Resources
- Brief [tutorial](https://medium.com/better-programming/https-medium-com-ratik96-scheduling-jobs-with-crontab-on-macos-add5a8b26c30) on setting up jobs