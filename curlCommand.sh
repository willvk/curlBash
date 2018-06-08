#!/bin/bash
UUID=`uuidgen`
cp transaction.json transaction-${UUID}.json
sed -i '' s/PLACEHOLDER/${UUID}/g transaction-${UUID}.json
curl -X POST \
  https://api-m2m-tst-1.vti.demoasset-nxbos.net/upload \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: multipart/form-data; boundary=----01CBB76JDTPR0G15R7GPSC1BVY' \
  -H 'Postman-Token: 4896be15-c5a1-47a4-b82d-505f47466ac6' \
  -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW' \
  -H 'x-api-key: TY0MQNZV566cxrIXW7m8j1UGD7xnMqPMaTFmKnnQ' \
  -F "json=@transaction-${UUID}.json" \
  -F images=@953320_1506291900623F02_151.jpg \
  -F images=@953320_1506291900813R02_891.jpg
#clean up the file
rm transaction-${UUID}.json