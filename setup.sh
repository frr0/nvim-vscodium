#!/bin/sh

if [ -d ~/.config/Code ]; then
  mv .config/nvim-vscodium/settings.json ~/.config/Code/User/  
  mv .config/nvim-vscodium/keybindings.json ~/.config/Code/User/  

  code --install-extension asvetliakov.vscode-neovim
  code --install-extension VSpaceCode.whichkey
  code --install-extension bartoszmaka95.onedark
  code --install-extension eamodio.gitlens
  code --install-extension usernamehw.errorlens
fi

if [ -d ~/.config/VSCodium ]; then
  mv .config/nvim-vscodium/settings.json ~/.config/VSCodium/User/  
  mv .config/nvim-vscodium/keybindings.json ~/.config/VSCodium/User/  

  codium --install-extension asvetliakov.vscode-neovim
  codium --install-extension VSpaceCode.whichkey
  codium --install-extension eamodio.gitlens
  codium --install-extension usernamehw.errorlens
  codium --install-extension bartoszmaka95.onedark
fi

