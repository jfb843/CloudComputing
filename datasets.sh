#!/usr/bin/env bash
# Downloads all datasets from Kaggle


# define datasets and the desired csv files
large_ds=(
	"wendykan/lending-club-loan-data"
	"azathoth42/myanimelist"
	"cdc/mortality"
)

medium_ds=(
	"snap/amazon-fine-food-reviews"
	"rounakbanik/the-movies-dataset"
	"mlg-ulb/creditcardfraud"
	"zynicide/wine-reviews"
	"heesoo37/120-years-of-olympic-history-athletes-and-results"
)

medium_ds_f=(
	"Reviews.csv"
	"movies_metadata.csv"
	"creditcard.csv"
	"winemag-data-130k-v2.csv"
	"athlete_events.csv"
)

small_ds=(
	"lava18/google-play-store-apps"
	"karangadiya/fifa19"
	"unsdsn/world-happiness"
	"nicapotato/womens-ecommerce-clothing-reviews"
	"drgilermo/nba-players-stats"
)

small_ds_f=(
	"googleplaystore.csv"
	"data.csv"
	"2015.csv"
	"Womens%20Clothing%20E-Commerce%20Reviews.csv"  # need to download manually :/
	"player_data.csv"
)

# combine all larges into one array
all_ds=( ${large_ds[@]} )

# iterate and download all datasets large
for ((i=0;i<${#large_ds[@]};i++)); do
	echo "downloading ${large_ds[i]}..."
    kaggle datasets download "${large_ds[i]}"
done 

# combine all sizes into one array
all_ds=( ${large_ds[@]} ${medium_ds[@]} ${small_ds[@]} )
all_ds_f=( ${large_ds_f[@]} ${medium_ds_f[@]} ${small_ds_f[@]} )

# iterate and download all datasets medium and small
for ((i=0;i<${#all_ds[@]};i++)); do
	echo "downloading ${all_ds[i]} - ${all_ds_f[i]}..."
    kaggle datasets download "${all_ds[i]}" -f "${all_ds_f[i]}"
done 

# unzip and remove all .zip files
unzip \*.zip
rm *.zip

chmod u+rw *.csv
