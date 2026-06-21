echo "Building the application..."

installDependencies() {
    echo "Installing dependencies..."
    #!/usr/bin/env bash
    set -euo pipefail

    echo "Building the application..."

    # Determine repo root and source dir
    ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
    SRC_DIR="$ROOT_DIR/src"

    if [ ! -d "$SRC_DIR" ]; then
        echo "Source directory not found: $SRC_DIR"
        exit 1
    fi

    cd "$SRC_DIR"

    echo "Installing dependencies in $SRC_DIR..."

    # Ensure yarn is available; try to install via npm if missing
    if ! command -v yarn >/dev/null 2>&1; then
        if command -v npm >/dev/null 2>&1; then
            echo "yarn not found, attempting to install yarn globally via npm"
            npm install -g yarn || true
        else
            echo "Neither yarn nor npm found in PATH; please install one of them"
            exit 1
        fi
    fi

    if ! command -v yarn >/dev/null 2>&1; then
        echo "yarn still not available after attempt to install; aborting"
        exit 1
    fi

    echo "Using yarn: $(yarn --version || true)"
    yarn install --frozen-lockfile || yarn install

    echo "Building with yarn..."
    yarn build

    echo "Build completed."
