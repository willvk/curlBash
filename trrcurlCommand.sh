#!/bin/bash
UUID=`uuidgen`
cp trr.json trr-${UUID}.json
sed -i '' s/PLACEHOLDER/${UUID}/g trr-${UUID}.json
curl -X POST \
  https://api-m2m-dev-1.trr.demoasset-nxbos.net/upload \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -H 'Postman-Token: 02266029-2541-4a98-96be-0a18b65d6dae' \
  -H 'x-api-key: TY0MQNZV566cxrIXW7m8j1UGD7xnMqPMaTFmKnnQ' \
  --data "@trr-${UUID}.json"
#clean up the file
rm trr-${UUID}.json