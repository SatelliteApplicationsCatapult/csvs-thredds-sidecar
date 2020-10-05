FROM python:3.7.8-alpine3.12

RUN pip install awscli

RUN apk update && apk upgrade && apk add bash

ENTRYPOINT ["tail", "-f", "/dev/null"]

ENV AWS_ACCESS_KEY_ID **None**
ENV AWS_SECRET_ACCESS_KEY **None**
ENV AWS_DEFAULT_REGION eu-west-1
ENV S3_S3V4 no
ENV S3_URL http://s3-uk-1.sa-catapult.co.uk
ENV CONCURRENT_REQUESTS 1

RUN aws configure set default.s3.max_concurrent_requests ${CONCURRENT_REQUESTS}

COPY restore_era5_data.sh /restore_era5_data.sh
