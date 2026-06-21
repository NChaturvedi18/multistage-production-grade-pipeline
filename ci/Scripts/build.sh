echo "Building the application..."

installDependencies() {
    echo "Installing dependencies..."
    sh '''
        npm install -g yarn || true
        yarn install
        yarn --version
    '''
}

buildApplication() {
    echo "Building the application..."
    sh '''
        yarn build
    '''
}

installDependencies
if [installDependencies]; then
    buildApplication
else
    echo "Dependency installation failed. Exiting."
    exit 1
fi
