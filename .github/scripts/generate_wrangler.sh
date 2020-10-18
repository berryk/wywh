#!/bin/bash

# Generate wrangler.toml using secret variables

cat > wrangler.toml <<- EOM
name = "wywh"
type = "webpack"
account_id = "$CF_ACCOUNT_ID"
workers_dev = true
route = ""
zone_id = ""

[site]
bucket = "/home/runner/work/wywh/wywh/dist"
EOM
