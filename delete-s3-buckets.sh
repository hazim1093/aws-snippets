#!/bin/bash
BUCKET_NAMES=$@

for bucket_name in ${BUCKET_NAMES}; do
    aws --profile stakater s3 rm s3://${bucket_name} --recursive
    aws --profile stakater s3 rb s3://${bucket_name}
done