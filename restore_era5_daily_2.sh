daily_data=( "mean_soil_temp_L1" "mean_soil_water_L1" "mean_sol_rad" "total_precipitation" )

for dataset in "${daily_data[@]}"
do
   :
   mkdir -p /era5_data/daily_2/ERA5_daily_$dataset/
   aws --endpoint-url=$S3_URL s3 cp s3://csvs-netcdf/daily/ERA5_daily_$dataset/ /era5_data/daily_2/ERA5_daily_$dataset/. --recursive
done
