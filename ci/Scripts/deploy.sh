echo "Deploying the application..."

deploy() {
    echo "Deploying the application..."
    sh "yarn deploy"
}

if [deploy]; then
    echo "Deployment completed successfully."
else
    echo "Deployment failed. Exiting."
    exit 1
fi