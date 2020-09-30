# daily data part 1
aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/daily/ /usr/local/daily-1-data/ \
--exclude ERA5_daily_mean_m* \
--exclude ERA5_daily_mean_s* \
--exclude ERA5_daily_total*
# daily data part 2
aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/daily/ /usr/local/daily-2-data/ \
--exclude "*" --include ERA5_daily_mean_ms* --include ERA5_daily_mean_soil_temp_*
# daily data part 3
aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/daily/ /usr/local/daily-3-data/ \
--exclude ERA5_daily_mean_2mTemp/* \
--exclude ERA5_daily_mean_RH/* \
--exclude ERA5_daily_mean_TotalWind/* \
--exclude ERA5_daily_mean_mslp/* \
--exclude ERA5_daily_mean_soil_temp_L1/*
# monthly data
mkdir /usr/local/monthly-yearly-data/monthly
aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/monthly/ /usr/local/monthly-yearly-data/monthly
# 30 yeras average data
mkdir /usr/local/monthly-yearly-data/30year
aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/30year/ /usr/local/monthly-yearly-data/30year