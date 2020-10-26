#!/bin/bash

aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/ncep/ /usr/local/mcep/