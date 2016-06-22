FROM node:4.4.5

RUN npm install -g bower
RUN npm install -g polymer-cli

ENV REPOSITORY https://github.com/Polymer/app-drawer-template.git
ENV REPOSITORY_NAME app-drawer-template

WORKDIR /app
RUN chmod -R +x /app

VOLUME /app/build/bundled /app/build/unbundled

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod -R +x /docker-entrypoint.sh

CMD /bin/bash
ENTRYPOINT /docker-entrypoint.sh
