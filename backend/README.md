# StockBot - backend

Create project:

`npm init -y`

Install module:

`yarn add cors express mysql nodemon`

## Issue - Unable to start backend container
Fix:

1. Please install Node & Yarn in your laptop if it's not installed.

- Install [node] (https://nodejs.org/en/download) in Windows laptop
- Install [yarn] (https://classic.yarnpkg.com/latest.msi) in Windows laptop

2. Go to project location `~\code\code\stockbot` and run command `yarn install`

3. Start stack again `docker compose up -d`

4. Check container status `docker compose top`

```bash
# Sample output 

PS C:\Users\jignesh\code\stockbot> docker compose top
stockbot-backend-1
UID    PID    PPID   C    STIME   TTY   TIME       CMD
root   920    900    0    00:48   ?     00:00:00   node /opt/yarn-v1.22.5/bin/yarn.js start
root   1172   920    0    00:48   ?     00:00:00   /bin/sh /app/node_modules/.bin/nodemon index.js
root   1178   1172   0    00:48   ?     00:00:01   /usr/local/bin/node /app/node_modules/.bin/../nodemon/bin/nodemon.js index.js
root   1212   1178   0    00:48   ?     00:00:02   /usr/local/bin/node index.js

stockbot-frontend-1
UID    PID    PPID   C    STIME   TTY   TIME       CMD
root   1083   1057   0    00:48   ?     00:00:00   node /opt/yarn-v1.22.5/bin/yarn.js start
root   1189   1083   0    00:48   ?     00:00:00   /usr/local/bin/node /app/node_modules/.bin/react-scripts start
root   1196   1189   2    00:48   ?     00:00:08   /usr/local/bin/node /app/node_modules/react-scripts/scripts/start.js

stockbot-mysql-1
UID   PID   PPID   C    STIME   TTY   TIME       CMD
999   852   831    0    00:48   ?     00:00:00   mysqld

stockbot-phpmyadmin-1
UID        PID   PPID   C    STIME   TTY   TIME       CMD
root       724   703    0    00:48   ?     00:00:00   apache2 -DFOREGROUND
www-data   794   724    0    00:48   ?     00:00:00   apache2 -DFOREGROUND
www-data   795   724    0    00:48   ?     00:00:00   apache2 -DFOREGROUND
www-data   796   724    0    00:48   ?     00:00:00   apache2 -DFOREGROUND
www-data   797   724    0    00:48   ?     00:00:00   apache2 -DFOREGROUND
www-data   798   724    0    00:48   ?     00:00:00   apache2 -DFOREGROUND

```