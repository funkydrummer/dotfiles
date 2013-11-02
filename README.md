# Dotfiles

## Installation

It’s as simple as running the following command from our home directory:

```bash
git clone git://github.com/<mygithubusername>/dotfiles.git
```

Once the repository has been cloned to our home directory, simply change to the dotfiles directory, make the makesymlinks.sh script executable, and run the script, like so:

```bash
cd ~/dotfiles
chmod +x makesymlinks.sh
./makesymlinks.sh
```

That’s it! If the settings don’t take effect right away, we can just log out and log back in (this will re-source our dotfiles).
