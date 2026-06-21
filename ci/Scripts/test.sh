echo "Running tests, here we make sure Unit test, Integration & Static analysis are passing before we move to the next stage of the pipeline..."

test() {
    echo "Running tests..."
    sh '''
        yarn test
    '''
}

if [test]; then
    echo "Tests passed successfully."
else
    echo "Tests failed. Exiting."
    exit 1
fi