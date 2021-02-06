#!/bin/bash
DOWNLOAD_PATH="https://data.sfgov.org/api/views/wytw-dqq4/rows.csv?accessType=DOWNLOAD"

read -r -p "This will download the NSynth training set (36GB), which will take a long time.
Are you sure you want to do this? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])
	read -p "Enter dataset path [datasets/]: " dataset_path
	dataset_path=${dataset_path:-datasets}
        mkdir -p $dataset_path
	curl -o $dataset_path/speed.csv $DOWNLOAD_PATH 
        ;;
    *)
        echo "Aborting."
        ;;
esac
