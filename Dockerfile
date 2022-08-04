FROM python:3.8-alpine

LABEL "com.github.actions.name"="repo-commands"
LABEL "com.github.actions.description"="Sync a directory to an AWS S3 repository"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="blue"

LABEL version="0.5.1"
LABEL repository="https://github.com/ashal-impress/repo-commands"
LABEL homepage="NA"
LABEL maintainer="ashal@impress.ai"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.22.23'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
