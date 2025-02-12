#!/bin/bash


###########################
#Author: jaswanth
#date: 4th feb
#version: v2
#
#This scriot will report the aws resource usage
#
############################


# we are going to track
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM User
#

# list s3 buckets
#
set -x
echo "list s3 buckets"
aws s3 ls >> resourceTracker

#list ec2 instances

echo "list ec2 instances"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >  resourceTracker

#list lambda 

echo "list lambda functions"

aws lambda list-functions >> resourceTracker

#list IAM users

echo "list IAM users"

aws iam list-users >> resourceTracker
