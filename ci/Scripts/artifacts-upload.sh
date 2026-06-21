#!/usr/bin/env bash

echo "Uploading artifacts..."

artifactsUpload() {
  # 1. Create the target directory safely if it doesn't exist
  mkdir -p "temp/txt.js"

  echo "Uploading artifacts..."
  
  # 2. Check if your specific artifact file exists
  if [ -f "temp/txt.js" ]; then
    # Replace this echo with your real upload utility (e.g., aws s3 cp, curl, cp)
    echo "Uploading temp/txt.js to remote storage..."
    echo 'Artifacts uploaded successfully.'
  else
    echo "No artifacts found: temp/txt.js"
  fi
}

artifactsUpload
