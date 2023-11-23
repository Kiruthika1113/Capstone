#!/bin/bash

# Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Building project
    ./build.sh

    # Logging into Docker Hub 
    docker login -u kiruthika1113 -p dckr_pat_N3vPt2x-250Jb7VNm0tvTZnxzDI

  
    # Tagging the image
    docker tag reactjsimg kiruthika1113/dev

    # Push the image to the Dev Docker Hub repository
    docker push kiruthika1113/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    # Building project
    ./build.sh

    # Logging into Docker Hub
    docker login -u kiruthika1113 -p dckr_pat_N3vPt2x-250Jb7VNm0tvTZnxzDI

   
    # Tagging the image
    docker tag reactjsimg kiruthika1113/production 

    # Push the image to the Prod Docker Hub repository
    docker push kiruthika1113/production
else
    echo "Deployment error"
fi
