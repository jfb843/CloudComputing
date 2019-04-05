#!/usr/bin/env bash
# Downloads all datasets from Kaggle

mkdir "data/"

# define datasets and the desired csv files
large_ds=(
    "wendykan/lending-club-loan-data"
    "city-of-seattle/seattle-checkouts-by-title"
    "kmader/skin-cancer-mnist-ham10000"
    "city-of-seattle/seattle-library-collection-inventory"
    "noaa/noaa-global-surface-summary-of-the-day"
    "kmader/crowds-cure-cancer-2017"
    "mozillaorg/common-voice"
    "hateful-users-on-twitter"
    "openaddresses/openaddresses-europe"
    "residentmario/iowa-liquor-sales"
    "seattle-public-library/seattle-library-checkout-records"
    "wcukierski/enron-email-dataset"
    "cityofLA/los-angeles-parking-citations"
    "gaborfodor/additional-kiva-snapshot"
    "kani14am/tweets"
    "azathoth42/myanimelist"
    "cdc/mortality"
)

large_ds_f=(
    "loan.csv"
    "checkouts-by-title.csv"
    "HAM10000_metadata.csv"
    "library-collection-inventory.csv"
    "isd-history.csv"
    "CrowdsCureCancer2017Annotations.csv"
    "cv-invalid.csv"
    "users_neighborhood_anon.csv"
    "austria.csv"
    "Iowa_Liquor_Sales.csv"
    "Checkouts_By_Title_Data_Lens_2005.csv"
    "emails.csv"
    "parking-citations.csv"
    "country_stats.csv"
    "IRAhandle_tweets_10.csv"
    "2005_data.csv"
    "2006_data.csv"
    "2007_data.csv"
    "2008_data.csv"
    "2009_data.csv"
    "2010_data.csv"
    "2011_data.csv"
    "2012_data.csv"
    "2013_data.csv"
    "2014_data.csv"
    "2015_data.csv"
)

# iterate and download all datasets large
for ((i=0;i<${#large_ds[@]};i++)); do
    if [ "$i" -lt 15 ]; then
        echo "downloading ${large_ds[i]} - ${large_ds_f[i]}..."
        kaggle datasets download "${large_ds[i]}" -f "${large_ds_f[i]}"
    elif [ "$i" -eq 15 ]; then
        echo "downloading all ${large_ds[i]}..."
        kaggle datasets download "${large_ds[i]}"
    else
        for ((j=15;j<${#large_ds_f[@]};j++)); do ##### CHANGE THIS!!!!!!
            echo "downloading ${large_ds[i]} - ${large_ds_f[j]}..."
            kaggle datasets download "${large_ds[i]}" -f "${large_ds_f[j]}"
        done
    fi
done

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
    "sudalairajkumar/cryptocurrencypricehistory"
    "rtatman/speech-accent-archive"
    "new-york-city/nyc-property-sales"
    "rush4ratio/video-game-sales-with-ratings"
    "uciml/biomechanical-features-of-orthopedic-patients"
    "pitasr/falldata"
    "uciml/iris"
    "uciml/adult-census-income"
    "uciml/indian-liver-patient-records"
)

small_ds_f=(
    "googleplaystore.csv"
    "data.csv"
    "2015.csv"
    "Womens%20Clothing%20E-Commerce%20Reviews.csv"  # need to download manually :/
    "player_data.csv"
    "bitcoin_cash_price.csv"
    "speakers_all.csv"
    "nyc-rolling-sales.csv"
    "Video_Games_Sales_as_at_22_Dec_2016.csv"
    "column_2C_weka.csv"
    "falldeteciton.csv"
    "Iris.csv"
    "adult.csv"
    "indian_liver_patient.csv"
)

# combine all sizes into one array
all_ds=( ${medium_ds[@]} ${small_ds[@]} )
all_ds_f=( ${medium_ds_f[@]} ${small_ds_f[@]} )

# iterate and download all datasets medium and small
for ((i=0;i<${#all_ds[@]};i++)); do
    echo "downloading ${all_ds[i]} - ${all_ds_f[i]}..."
    kaggle datasets download "${all_ds[i]}" -f "${all_ds_f[i]}"
done 

# unzip and remove all .zip files
unzip \*.zip
rm *.zip
mv *.csv "data/"

chmod u+rw *.csv
