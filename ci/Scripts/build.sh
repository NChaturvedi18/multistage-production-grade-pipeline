echo "Building the application..."

installDependencies() {
    echo "Installing dependencies..."
    dir(src) {
        sh '''
            npm install -g yarn || true
            yarn install
            yarn --version
        '''
    }
}

buildApplication() {
    echo "Building the application..."
    dir(src) {
        sh '''
            yarn build
        '''
    }
}

installDependencies
if [installDependencies]; then
    buildApplication
else
    echo "Dependency installation failed. Exiting."
    exit 1
fi