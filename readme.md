# dotfiles

My personal configuration files.

Includes:
- vim
- vscode
- tmux
- git

Clone the repo and symlink config files accordingly.
```bash
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
```
vscode files need to be placed in:
- macOS: `~/Library/Application Support/Code/User/`
- Linux: `~/.config/Code/User/`
- Windows: `%APPDATA%\Code\User\`

Also the `vscodevim.vim` extension is required.
