#!/bin/bash

# 提交到GitHub
echo "Pushing to GitHub..."
git add .
git commit -m "Update website content"
git push origin main

# 部署到AWS S3
echo "Deploying to AWS S3..."
aws s3 sync . s3://flexfit-website/ \
    --exclude ".git/*" \
    --exclude ".gitignore" \
    --exclude "deploy.sh" \
    --exclude "bucket-policy.json" \
    --exclude ".DS_Store"

echo "Deployment completed!" 