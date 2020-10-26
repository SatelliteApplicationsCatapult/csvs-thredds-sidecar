FROM python:3.7.9-slim-buster

RUN mkdir /scripts

RUN pip install awscli

ENV AWS_ACCESS_KEY_ID **None**
ENV AWS_SECRET_ACCESS_KEY **None**
ENV AWS_DEFAULT_REGION eu-west-1
ENV S3_S3V4 no
ENV S3_URL http://s3-uk-1.sa-catapult.co.uk
ENV CONCURRENT_REQUESTS 1

RUN aws configure set default.s3.max_concurrent_requests ${CONCURRENT_REQUESTS}

COPY restore_era5_data.sh /scripts/
COPY restore_era5_land_data.sh /scripts/
COPY restore_trmm_data.sh /scripts/
COPY restore_ncep_data.sh /scripts/

RUN find /scripts/ -type f -iname "*.sh" -exec chmod +x {} \;
