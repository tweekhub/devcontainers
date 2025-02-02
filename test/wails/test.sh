#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "Verify correct Ubuntu variant" lsb_release -c | grep $(jq -r '.options.imageVariant.default' .devcontainer/devcontainer-template.json)
check "Verify Go version" go version | grep "go1.22"
check "Verify Node.js version" node --version | grep "v20."
check "Verify VSCode Go extension" [ -d "/home/vscode/.vscode-server/extensions/golang.go-*" ]
check "Verify ESLint extension" [ -d "/home/vscode/.vscode-server/extensions/dbaeumer.vscode-eslint-*" ]
check "Verify Wails installation" command -v wails
check "Verify forwarded port" grep 3000 .devcontainer/devcontainer.json
check "Verify remote user" [ $(whoami) = "vscode" ]

# Report result
reportResults
