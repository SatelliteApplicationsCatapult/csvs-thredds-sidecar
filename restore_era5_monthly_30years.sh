folders=( "30year" "monthly" )

for folder in "${folders[@]}"
do
    :
    mkdir -p /era5_data/monthly_30years/$folder/
    aws --endpoint-url=$S3_URL s3 cp s3://csvs-netcdf/$folder/ /era5_data/monthly_30years/$folder/. --recursive
done
