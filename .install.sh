#!/bin/zsh

# Install xCode cli tools
echo "Installing commandline tools..."
xcode-select --install

# Install Brew
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

# Brew Taps
echo "Installing Brew Formulae..."
brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae

# Brew Formulae
brew install gsl
# Install LLVM (Low-Level Virtual Machine) compiler infrastructure.
brew install llvm
# Install ccls (C/C++/Objective-C language server).
brew install ccls
# Install Boost C++ Libraries.
brew install boost
# Install libomp (OpenMP library for LLVM).
brew install libomp
# Install Armadillo C++ linear algebra library.
brew install armadillo
# Install mas (Mac App Store command line interface).
#brew install mas
# Install Neovim (modern Vim text editor).
brew install neovim
# Install tree (directory listing as a tree structure).
brew install tree
# Install wget (file downloader).
brew install wget
# Install jq (JSON processor).
brew install jq
# Install gh (GitHub CLI).
brew install gh
# Install ripgrep (fast search tool).
brew install ripgrep
# Install rename (file renaming utility).
brew install rename
# Install Bear (generate compilation database for clang tooling).
brew install bear
# Install neofetch (system information tool).
brew install neofetch
# Install wireguard-go (WireGuard VPN implementation).
#brew install wireguard-go
# Install Gnuplot (graph plotting tool).
brew install gnuplot
# Install LuLu (macOS firewall).
brew install lulu
#Install ifstat (network interface statistics tool).
brew install ifstat
# Install HDF5 (hierarchical data format library).
brew install hdf5
# Install MacTeX (TeX distribution for macOS).
brew install mactex
#Install Starship (cross-shell prompt).
brew install starship
#Install dooit (task manager CLI).
brew install dooit
# Install Alfred (macOS productivity application).
brew install alfred
#Install zsh-autosuggestions (Zsh plugin for auto-suggestions).
brew install zsh-autosuggestions
# Install zsh-syntax-highlighting (Zsh plugin for syntax highlighting).
brew install zsh-syntax-highlighting
# brew install fskhd --head (Hammerspoon alternative). which is a hotkey daemon for macOS
brew install skhd
# Install yabai (Tiling window manager for macOS based on binary space partitioning).
brew install yabai 
# install fnnn (fzf + nnn) which is a file manager for the terminal.
# brew install fnnn --head
# install sketchybar (status bar for macOS).
brew install sketchybar
# install svim (Safari Vim).
# brew install svim
# install sf-symbols (macOS system symbols). 
brew install sf-symbols
# install switchaudio-osx (macOS audio switcher).
brew install switchaudio-osx
# install lazygit (simple terminal UI for git commands).
brew install lazygit
# install btop (top-like process viewer). which is a cross-platform graphical process/system monitor with a ncurses interface.
# ncurses is a programming library providing an application programming interface (API) that allows the programmer to write text-based user interfaces in a terminal-independent manner.
brew install btop
# install protonvpn-cli (ProtonVPN CLI).
brew install protonvpn-cli
# install Obsidian (note-taking and knowledge base app).
brew install obsidian
# install brave-browser (web browser).
brew install brave-browser
# install firefox (web browser).
brew install firefox
# install google-chrome (web browser).
brew install google-chrome
# install firefox-developer-edition (web browser).
brew install firefox-developer-edition
# install tools for managing and interacting with Docker containers and images.
brew install dockexr
# full installation for 10x developer productivity.
brew install git
# install git-lfs (Git extension for versioning large files).
brew install git-lfs
# install hub (GitHub CLI).
brew install hub
# install tig (text-mode interface for Git).
brew install tig
# install git-extras (Git utilities).
brew install git-extras
# install tmuxinator (tmux sessions manager).
brew install tmux
# install zsh (zsh sessions manager).
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install zsh-history-substring-search
brew install zsh-lovers
brew install zsh-navigation-tools
brew install zsh-quickstart-kit
# install zshdb (zsh debugger).
brew install zshdb



# Brew Casks
echo "Installing Brew Casks..."
#brew install --cask inkscape
#brew install --cask moonlight
#brew install --cask mumble
#brew install --cask libreoffice
brew install --cask alacritty
brew install --cask spotify
# Install MonitorControl, an app to control external monitor brightness
brew install --cask monitorcontrol
# Install Sloth, a macOS GUI for lsof, showing all open files and sockets
brew install --cask sloth
brew install --cask zoom
# Install Skim, a PDF reader and note-taker for macOS
brew install --cask skim
# Install MeetingBar, a macOS menu bar app for calendar events
brew install --cask meetingbar
# Install MachOView, a visual Mach-O file browser
brew install --cask machoview
# Install Hex Fiend, a fast and clever hex editor
brew install --cask hex-fiend
# Install Cutter, a free and open-source reverse engineering framework
brew install --cask cutter
brew install --cask font-hack-nerd-font
# Install VLC, a free and open source cross-platform multimedia player and framework
brew install --cask vlc

# Mac App Store Apps
echo "Installing Mac App Store Apps..."
# install wireguard a VPN  which is a free and open-source software application for creating virtual private networks.
#mas install 1451685025 #Wireguard
# install xCode
mas install 497799835 #xCode
# install Vimari a Vim keybindings for Safari
#mas install 1480933944 #Vimari

# macOS Settings
echo "Changing macOS defaults..."
#Enable Bonjour discovery for all network interfaces
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1
#Prevent .DS_Store files creation on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
#Disable workspace auto-spanning across displays
defaults write com.apple.spaces spans-displays -bool false
#Enable auto-hiding of the Dock
defaults write com.apple.dock autohide -bool true
#Disable rearrangement of spaces based on recent use
defaults write com.apple.dock "mru-spaces" -bool "false"
#Disable window opening and closing animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
#Disable file quarantine warning for downloaded files
defaults write com.apple.LaunchServices LSQuarantine -bool false
#Enables natural (reverse) scroll direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true
#Set the key repeat rate to the fastest setting
defaults write NSGlobalDomain KeyRepeat -int 1
#Disable automatic spelling correction
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
#Show all file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
#Hide the menu bar
defaults write NSGlobalDomain _HIHideMenuBar -bool true
#Set the system highlight color
defaults write NSGlobalDomain AppleHighlightColor -string "0.65098 0.85490 0.58431"
#Set the system accent color
defaults write NSGlobalDomain AppleAccentColor -int 1
#Set the location for screen captures to the Desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop"
#Disable shadow in screen captures
defaults write com.apple.screencapture disable-shadow -bool true
#Set screen capture file format to PNG
defaults write com.apple.screencapture type -string "png"
#Disable Finder animations
defaults write com.apple.finder DisableAllAnimations -bool true
#Hide external hard drives on the Desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
#Hide internal hard drives on the Desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
#Hide mounted servers on the Desktop
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
#Hide removable media on the Desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
#Show hidden files in Finder
defaults write com.apple.Finder AppleShowAllFiles -bool true
#Set Finder search scope to the current folder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
#Disable extension change warning in Finder
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
#Show the full POSIX path in Finder title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
#Set Finder default view style to list view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
#Hide Finder status bar
defaults write com.apple.finder ShowStatusBar -bool false
#Prevent Time Machine from prompting to use new hard drives for backup
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool YES
#Disable automatic opening of "safe" files in Safari
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
#Enable Safari's Develop menu
defaults write com.apple.Safari IncludeDevelopMenu -bool true
#Enable WebKit developer extras in Safari
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
#Enable WebKit developer extras for Safari ContentPageGroup
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
#Enable WebKit developer extras globally
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
#Disable including names when copying email addresses in Mail
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
# Copying and checking out configuration files
echo "Planting Configuration Files..."
[ ! -d "$HOME/dotfiles" ] && git clone --bare git@github.com:FelixKratz/dotfiles.git $HOME/dotfiles
git --git-dir=$HOME/dotfiles/ --work-tree=$HOME checkout master

# Installing Fonts
git clone git@github.com:shaunsingh/SFMono-Nerd-Font-Ligaturized.git /tmp/SFMono_Nerd_Font
mv /tmp/SFMono_Nerd_Font/* $HOME/Library/Fonts
rm -rf /tmp/SFMono_Nerd_Font/
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.4/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf

# source $HOME/.zshrc is needed to make sure that the new PATH is used
source $HOME/.zshrc
# cfg config --local status.showUntrackedFiles no is needed to make sure that the new PATH is used
cfg config --local status.showUntrackedFiles no

#install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Python Packages
echo "Installing Python Packages..."
curl https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh | sh
source $HOME/.zshrc
# conda install -c apple tensorflow-deps v
#
# PackagesNotFoundError: The following packages are not available from current channels:
#
#  - tensorflow-deps
#
#Current channels:
#
#  - https://conda.anaconda.org/apple/osx-64
#  - https://conda.anaconda.org/apple/noarch
#  - https://repo.anaconda.com/pkgs/main/osx-64
#  - https://repo.anaconda.com/pkgs/main/noarch
# - https://repo.anaconda.com/pkgs/r/osx-64
#  - https://repo.anaconda.com/pkgs/r/noarch
# why above error? -> tensorflow-deps is not available for m1 macs
conda install -c conda-forge pybind11
conda install matplotlib
conda install jupyterlab
conda install seaborn
conda install opencv
 conda install joblib
pip install joblib
conda install pytables
pip install tensorflow-macos
pip install tensorflow-metal
pip install debugpy
pip install sklearn
# pip install tensorflow on m1 macs is not working instead use conda install tensorflow-deps
pip install pandas
pip install scipy
pip install numpy
pip install tqdm
pip install pyyaml

# full installation for 10x developer productivity in machine learning
# install python3 (Python 3 programming language).
brew install python3
# install python (Python 2 programming language).
brew install python
# install pyenv (Python version manager).
brew install pyenv
# install pyenv-virtualenv (pyenv plugin to manage virtualenv).
brew install pyenv-virtualenv
# install pyenv-virtualenvwrapper (pyenv plugin to manage virtualenvwrapper).
brew install pyenv-virtualenvwrapper
# install pyenv-which-ext (pyenv plugin to extend pyenv which).
brew install pyenv-which-ext
# install pyenv-update (pyenv plugin to update pyenv).
brew install pyenv-update
# install pyenv-installer (pyenv installer).
brew install pyenv-installer
# install pyenv-doctor (pyenv doctor).
brew install pyenv-doctor
# install pyenv-ccache (pyenv ccache).
brew install pyenv-ccache
# install pyenv-aliases (pyenv aliases).
brew install pyenv-aliases
# install pyenv-commands (pyenv commands).
brew install pyenv-commands
# install pyenv-versions (pyenv versions). which is a pyenv plugin to list all Python versions available to pyenv.
brew install pyenv-versions
# install pyenv-uninstall (pyenv uninstall). which is a pyenv plugin to uninstall a specific Python version.
brew install pyenv-uninstall
# install pyenv-stdio (pyenv stdio). which is a pyenv plugin to enable stdio for Python.
brew install pyenv-stdio


# Start Services
echo "Starting Services (grant permissions)..."
brew services start skhd
brew services start fyabai
brew services start sketchybar
# brew services start svim

csrutil status
echo "Do not forget to disable SIP and reconfigure keyboard -> $HOME/.config/keyboard..."
#open "$HOME/.config/keyboard/KeyboardModifierKeySetup.png"
echo "Add sudoer manually:\n '$(whoami) ALL = (root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | awk "{print \$1;}") $(which yabai) --load-sa' to '/private/etc/sudoers.d/yabai'"
echo "Installation complete...\nRun nvim +PackerSync and Restart..."