# sudo yabai --load-sa is needed to make sure that the new PATH is used which is needed for the yabai service
sudo yabai --load-sa

# Service `skhd` already started, use `brew services restart skhd` to restart.
brew services restart skhd
# Service `fyabai` already started, use `brew services restart fyabai` to restart.
brew services restart yabai
# Service `sketchybar` already started, use `brew services restart sketchybar` to restart.
brew services restart sketchybar
# Service `svim` already started, use `brew services restart svim` to restart.
# brew services restart svim
# system integrity protection status: unknown (Custom Configuration). is used to check if SIP is enabled.
# SIP means that you can't modify system files even with sudo. This is a security feature of macOS.
# System Integrity Protection status: unknown (Custom Configuration).

# Configuration:
#	Apple Internal: disabled
#	Kext Signing: enabled
#	Filesystem Protections: disabled
#	Debugging Restrictions: disabled
#	DTrace Restrictions: enabled
#	NVRAM Protections: disabled
#	BaseSystem Verification: enabled
#	Boot-arg Restrictions: disabled
#	Kernel Integrity Protections: disabled
#	Authenticated Root Requirement: enabled

# This is an unsupported configuration, likely to break in the future and leave your machine in an unknown state.
# Do not forget to disable SIP and reconfigure keyboard -> ~/.config/keyboard...
# The file ~/.config/keyboard/KeyboardModifierKeySetup.png does not exist.
# Add sudoer manually:
# Installation complete...
# Run nvim +PackerSync and Restart...
#nvim +PackerSync +qall && echo "Restarting..." && sleep 1 && killall -9 nvim && killall -9 Sketchybar && killall -9 yabai && killall -9 skhd && killall -9 zsh && open -a Sketchybar && open -a yabai && open -a skhd && open -a zsh

# brew services cleanup
# Warning: Calling plist_options is deprecated! Use service.require_root instead.
#Please report this issue to the koekeishiya/formulae tap (not Homebrew/brew or Homebrew/homebrew-core), or even better, submit a PR to fix it:
#  /opt/homebrew/Library/Taps/koekeishiya/homebrew-formulae/yabai.rb:42

# service.require_root is disabled by default so you can use this method: