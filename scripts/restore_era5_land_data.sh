#!/bin/bash

aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/ERA5-Land/ /usr/local/era5-land/
