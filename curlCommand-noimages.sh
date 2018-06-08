#!/bin/bash
UUID=`uuidgen`
cp transaction-noimages.json transaction-noimages-${UUID}.json
#sed -i '' s/PLACEHOLDER/${UUID}/g transaction-noimages-${UUID}.json
curl -X POST \
  http://localhost:9090/upload \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: multipart/form-data; boundary=----01CBB76JDTPR0G15R7GPSC1BVY' \
  -H 'Postman-Token: 4896be15-c5a1-47a4-b82d-505f47466ac6' \
  -H 'x-api-key: TY0MQNZV566cxrIXW7m8j1UGD7xnMqPMaTFmKnnQ' \
  -F "json=@transaction-noimages-${UUID}.json"
#clean up the file
rm transaction-noimages-${UUID}.json