# OpsDeck – Automated Monitoring & Incident Response

OpsDeck is a lightweight internal tool to automate system health checks, database monitoring, log alerts, and incident response using Python, Bash, and RPA scripts. It integrates with Datadog, Sentry, and PagerDuty to keep infrastructure healthy and reactive.

## Features

- Database health checks (PostgreSQL, MySQL, MongoDB, Oracle)
- Bash + Python automation scripts
- Alerting via Datadog, Sentry, and PagerDuty
- CI/CD + Docker deployment
- Blue Prism bot triggers (simulated)
- Dashboard for live system metrics

## Getting Started

```bash
git clone https://github.com/yourusername/opsdeck.git
cd opsdeck
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```
