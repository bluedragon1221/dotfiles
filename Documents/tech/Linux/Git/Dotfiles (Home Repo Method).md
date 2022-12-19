---
description: Setup dotfiles using a git repo in your `$HOME`
---
This method uses a strange `.gitignore` file instead of the standard [[Dotfiles (Soft Link Method) |Soft Link Method]]
Make sure you [[Setup Git SSH]] first.

# Setup
Create a repo in your `$HOME`.
```sh
cd ~
git init
```

Now, create a `.gitignore` file with the following contents:
```gitignore
*
```
This makes all files and folders in the git repo ignored by default.

# Adding Files
To add a file, we force (`-f`) git around the `.gitignore` file:
```sh
git add -f ~/.zshrc
```

# Deploy on a new Machine
In your `$HOME`, add your dotfiles repo as a remote origin. Then pull all files to your computer.
```sh
cd ~
git remote add origin git@github.com:bluedragon1221/dotfiles
git pull
```