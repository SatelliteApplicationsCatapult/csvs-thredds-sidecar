daily_data=( "mean_2mTemp" "mean_RH" "mean_TotalWind" "mean_mslp" )

for dataset in "${daily_data[@]}"
do
   :
   mkdir -p /era5_data/daily_1/ERA5_daily_$dataset/
   aws --endpoint-url=$S3_URL s3 cp s3://csvs-netcdf/daily/ERA5_daily_$dataset/ /era5_data/daily_1/ERA5_daily_$dataset/. --recursive
done
