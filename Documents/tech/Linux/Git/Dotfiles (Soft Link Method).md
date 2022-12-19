---
description: Setup a dotfiles directory using soft links
---
[[Setup Git SSH]] before you do this.

# Setup
Create a new directory in your `$HOME`. Call it `dotfiles`.
```sh
mkdir ~/dotfiles
```

Initialize a Git repo in the dotfiles directory.
```sh
cd ~/dotfiles
git init
```

# Adding Files
Move the file into `~/dotfiles`, then create a soft link back to it's original location.
```sh
mv ~/.zshrc ~/dotfiles/
ln -sf ~/dotfiles/.zshrc ~/.zshrc
```

# Removing Files
Remove the symlink, then move it's `~/dotfiles` equivalent into it's proper place.
```sh
rm ~/.zshrc
mv ~/dotfiles/.zshrc ~/.zshrc
```
