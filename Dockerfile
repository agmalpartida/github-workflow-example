FROM ubuntu:18.04
ARG START_DIR=/tmp

COPY ${GITHUB_WORKSPACE} ${START_DIR}

RUN apt-get update \
 && apt-get install -y software-properties-common python-pip curl nodejs \
 && apt-add-repository -y --update ppa:ansible/ansible \
 && apt-get install -y ansible\
 && pip install docker

WORKDIR ${START_DIR}

CMD [ "/bin/bash" ]
