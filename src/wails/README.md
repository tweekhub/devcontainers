# Wails Development Container (wails-dev)

A development container template for building Wails applications with Go and Node.js.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Ubuntu version (use jammy on arm64/Apple Silicon): | string | jammy |
| nodeVersion | Default Node.js version to be installed via NVM: | string | 20 |
| goVersion | Go version to be installed: | string | 1.22 |
| installWailsVersion | Wails CLI version to install: | string | latest |

## Included Features

- Go (via devcontainer CLI feature)
- NVM for Node.js version management
- Wails CLI and dependencies
- Essential build tools
- VSCode extensions for Go and web development
- X11 forwarding support for GUI applications

## System Requirements

- libwebkit2gtk-4.0-dev
- libgtk-3-dev
- Build essentials
- NSIS (for Windows installers)
- UPX (optional, for compression)

## Port Forwarding

| Port | Description |
|-----|-----|
| 3000 | Default development server |
| 34115 | Wails development server |

## Container User

- `vscode` (non-root) with sudo access

---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/yourusername/wails-devcontainer/blob/main/devcontainer-template.json). Additional documentation can be found in [NOTES.md](NOTES.md)._