echo "Packaging the application..."

package() {
    echo "Packaging the application..."
    dir(src) {
        sh "yarn package"
    }
}

if [package]; then
    echo "Packaging completed successfully."
else
    echo "Packaging failed. Exiting."
    exit 1
fi