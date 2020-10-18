#!/bin/bash

# Generate wrangler.toml using secret variables

cat > wrangler.toml <<- EOM
name = "wywh"
type = "webpack"
account_id = "$CF_ACCOUNT_ID"
workers_dev = true
route = ""
zone_id = "$CF_ZONE_ID"

[site]
bucket = "./public"
EOM

