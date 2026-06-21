echo "Packaging the application..."

package() {
    echo "Packaging the application..."
    sh "yarn package"
}

if [package]; then
    echo "Packaging completed successfully."
else
    echo "Packaging failed. Exiting."
    exit 1
fi