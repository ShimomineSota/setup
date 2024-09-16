#!/bin/zsh
# --- Please run with administrator privileges ---
echo "Starting macOS setup..."

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Visual Studio Code
brew install --cask visual-studio-code
code --install-extension ms-ceintl.vscode-language-pack-ja
code --install-extension ms-vscode-remote.remote-containers
code --install-extension github.copilot
code --install-extension eamodio.gitlens
code --install-extension mhutchie.git-graph
code --install-extension github.github-vscode-theme
code --install-extension pkief.material-icon-theme

# Install Warp
brew install --cask warp

# Install Git
brew install git

# Install Docker Desktop
brew install --cask docker

# Install Google Chrome
brew install --cask google-chrome

# Install Slack
brew install --cask slack

echo "Complete macOS setup..."