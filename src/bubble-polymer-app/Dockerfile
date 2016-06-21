FROM node:4.4.5

RUN npm install -g bower
RUN npm install -g polymer-cli

RUN git clone https://github.com/stefanmerkel/bubble-polymer-app.git
RUN chmod -R +x /bubble-polymer-app
WORKDIR /bubble-polymer-app

VOLUME /bubble-polymer-app/build/bundled /bubble-polymer-app/build/unbundled

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod -R +x /docker-entrypoint.sh

CMD /bin/bash
ENTRYPOINT /docker-entrypoint.sh
