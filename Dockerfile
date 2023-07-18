FROM python:3

ENV AWSCLI_VERSION='2.0.6'

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip3 install awsebcli cryptography==41.0.2

RUN pip3 --no-cache-dir install awscli==${AWSCLI_VERSION}

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
