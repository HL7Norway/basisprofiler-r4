#!/bin/sh
curl 'http://data.ssb.no/api/klass/v1/classifications/131/codes?from=2020-01-01&selectCodes=*' -i \ -H 'Accept: text/csv' > kommuner.csv
# Kvasikode: last csv, strip http-headere, strip til kolonner "code", "name"
