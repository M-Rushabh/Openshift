FROM maven:3-jdk-8
RUN chgrp -R 0 /usr/src && chmod -R g=u /usr/src
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD ADD . /usr/src/app

ONBUILD RUN mvn install
