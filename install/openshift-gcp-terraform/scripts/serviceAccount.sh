#!/bin/bash

export PROJECT_ID=$1
export ACCOUNT_NAME=$2

gcloud iam service-accounts create $ACCOUNT_NAME
gcloud projects add-iam-policy-binding $PROJECT_ID --member "serviceAccount:$ACCOUNT_NAME@$PROJECT_ID.iam.gserviceaccount.com" --role "roles/owner"

# This gets the JSON
gcloud iam service-accounts keys create account.json --iam-account $ACCOUNT_NAME@$PROJECT_ID.iam.gserviceaccount.com
