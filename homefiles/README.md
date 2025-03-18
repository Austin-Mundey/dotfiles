# Homefiles - Bash Customization

## Files
- `.bash_aliases` → Contains useful command shortcuts.
- `bashsetup.sh` → Automates linking `.bash_aliases` to the home directory.

## How to Use
1. Run `bashsetup.sh` to create a symbolic link.
2. Reload your terminal with `source ~/.bashrc` or restart the session.

## Resources
- [Bash Alias Examples](https://linuxize.com/post/how-to-create-bash-aliases/)
- [Zach Browne](https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c)
- ChatGPT was used to create the `bashsetup.sh` with minor tweaks with this prompt "Create me a bashsetup.sh that creates symbolic links for .bash_aliases, move backups, and prompt the user to reload the environment."
