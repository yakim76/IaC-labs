#!/bin/bash
set -e
set -x


if [ -z "$1" ] ; then
    echo "Specify bucketName"
    exit 1
fi
if [ -z "$2" ] ; then
    echo "Specify region"
    exit 1
fi

bucketName=$1
region=$2

stackName=s3TerraformBackend

aws cloudformation deploy \
  --template-file s3-backend.yaml \
  --stack-name $stackName \
  --parameter-overrides BucketName=${bucketName} \
  --region $region \
  --profile tf

aws cloudformation describe-stacks --stack-name $stackName --region $region --profile tf


