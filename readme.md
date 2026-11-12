# dotfiles

My personal configuration files.
Clone the repo and symlink config files accordingly.

vim:
```bash
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
```

zed files (os-agnostic):
```bash
ln -sf ~/dotfiles/zed/settings.json ~/.config/zed/settings.json
ln -sf ~/dotfiles/zed/keymap.json ~/.config/zed/keymap.json
```
```powershell
New-Item -ItemType SymbolicLink -Force -Path "$env:APPDATA\Zed\settings.json" -Target "$HOME\dotfiles\zed\settings.json"
New-Item -ItemType SymbolicLink -Force -Path "$env:APPDATA\Zed\keymap.json" -Target "$HOME\dotfiles\zed\keymap.json"
```

git:
```bash
ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
```

tmux:
```bash
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

vscode files:
```bash
- macOS: `~/Library/Application Support/Code/User/`
- Linux: `~/.config/Code/User/`
- Windows: `%APPDATA%\Code\User\`
```
