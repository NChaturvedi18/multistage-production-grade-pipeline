echo "Deploying the application..."

deploy() {
    echo "Deploying the application..."
        yarn deploy
}

deploy
if [ $? -eq 0 ]; then
    echo "Deployment completed successfully."
else
    echo "Deployment failed. Exiting."
    exit 1
fi