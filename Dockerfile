FROM node:8.3

WORKDIR /usr/app

COPY package.json ./
RUN npm install

COPY test ./test
COPY index.html ./index.html
COPY README.md ./README.md
COPY screenshot.png ./screenshot.png

EXPOSE 3000
EXPOSE 9229

ENTRYPOINT "/bin/bash"