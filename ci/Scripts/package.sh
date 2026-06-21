echo "Packaging the application..."

package() {
    echo "Packaging the application..."
        yarn package
}

package
if [ $? -eq 0 ]; then
    echo "Packaging completed successfully."
else
    echo "Packaging failed. Exiting."
    exit 1
fi
