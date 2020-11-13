#!/bin/bash

mkdir -p /usr/local/gpcp
aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/gpcp/ /usr/local/gpcp/