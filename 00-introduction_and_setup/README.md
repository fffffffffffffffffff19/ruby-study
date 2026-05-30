# Environment Setup (Arch Linux)

This document outlines the steps taken to configure the Ruby development environment.

## Why asdf-vm ?
While Ruby is available via the **AUR (Arch User Repository)**, using a version manager like `asdf` is preferred for development because:
- **Isolation**: It prevents conflicts with Arch Linux system dependencies.
- **Flexibility**: Allows switching between different Ruby versions (e.g., 3.3.0 for new projects, 2.7.x for legacy) per directory.
- **Consistency**: Ensures the environment is reproducible regardless of the host OS.

## Installation Steps

### 1. Install System Dependencies
Before compiling Ruby, ensure the necessary build tools are installed:
```bash
sudo pacman -S --needed base-devel libffi libyaml openssl zlib
```

### 2. Installing asdf
Clone the repository:
```bash
git clone https://aur.archlinux.org/asdf-vm.git && cd asdf-vm && makepkg -si
```

### Shell Configuration (Fish Shell)

Since I am using the **Fish Shell**, I added the following configuration to `~/.config/fish/config.fish` to manage the `shims` directory correctly:

```fish
# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
```

### 3. Ruby Installation
With `asdf` configured, install the desired Ruby version:
```bash
asdf plugin add ruby
asdf install ruby 3.3.0
asdf global ruby 3.3.0
```