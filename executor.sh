#!/bin/bash
for i in {1..5000}; do
	time ./trrcurlCommand.sh > run.log 2>&1
	#./curlCommand-noimages.sh
done