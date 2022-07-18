### jubilant-winner

This is a fork from the [Space Monkey](https://github.com/james-cole2015/space-monkey) repo. This had some major changes from the original repo. This repo contains two AWS EC2 instances. Both are set up to be Jenkins Servers. One is configured to be the Main server and another is configured to be a node server that builds jobs. 
---

## High Level Commits
- Forked original repo from Space Monkey
- Consolidated security groups into a single group with multiple rules. 
- Created two security groups 
  - Jenkins Main SG
    - this SG will only allow ssh traffic from the original server that terraform runs on
  - Jenkins Node SG
    - this SG will only allow ssh traffic from the Jenkins Main Server
- Added additional EC2 instance that serves as the Jenkins Node Server
