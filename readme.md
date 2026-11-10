# dotfiles

My personal configuration files.

Includes:
- vim
- vscode
- tmux
- git
- zed

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

zed files are shared across OSes, specifications in macos/windows blocks at settings.json.
```bash
ln -sf ~/dotfiles/zed/settings.json ~/.config/zed/settings.json
ln -sf ~/dotfiles/zed/keymap.json ~/.config/zed/keymap.json
```
```powershell
New-Item -ItemType SymbolicLink -Force -Path "$env:APPDATA\Zed\settings.json" -Target "$HOME\dotfiles\zed\settings.json"
New-Item -ItemType SymbolicLink -Force -Path "$env:APPDATA\Zed\keymap.json" -Target "$HOME\dotfiles\zed\keymap.json"
```
