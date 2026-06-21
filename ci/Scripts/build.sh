#!/usr/bin/env bash

echo "Building the application..."

installDependencies() {
    echo "Installing dependencies..."
    npm install -g yarn || true
    yarn install
    yarn --version
}

buildApplication() {
    echo "Building the application..."
    yarn build
}

installDependencies

if [ $? -eq 0 ]; then
    buildApplication
else
    echo "Dependency installation failed. Exiting."
    exit 1
fi
