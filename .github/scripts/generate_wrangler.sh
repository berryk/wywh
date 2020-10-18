#!/bin/bash

# Generate wrangler.toml using secret variables

cat > wrangler.toml <<- EOM
name = "jkpenet"
type = "webpack"
account_id = "$CF_ACCOUNT_ID"
workers_dev = false
route = "jkpe.net/*"
zone_id = "$CF_ZONE_ID"

[site]
bucket = "./public"
entry-point = "jkpenet"
EOM

