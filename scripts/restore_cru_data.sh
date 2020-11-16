#!/bin/bash

aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/cru/ /usr/local/cru/
