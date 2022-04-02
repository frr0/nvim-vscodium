#!/bin/sh

if [ -d ~/.config/Code ]; then
  mv ~/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings_OLD.json 
  mv ~/.config/Code/User/settings.json ~/.config/Code/User/settings_OLD.json 
  mv .config/nvim-vscodium/settings.json ~/.config/Code/User/  
  mv .config/nvim-vscodium/keybindings.json ~/.config/Code/User/  

  code --install-extension 2gua.rainbow-brackets
  code --install-extension akainth015.marscode
  code --install-extension asvetliakov.vscode-neovim
  code --install-extension bartoszmaka95.onedark
  code --install-extension bungcip.better-toml
  code --install-extension cschlosser.doxdocgen
  code --install-extension DavidAnson.vscode-markdownlint
  code --install-extension eamodio.gitlens
  code --install-extension jeff-hykin.better-cpp-syntax
  code --install-extension kdarkhan.mips
  code --install-extension matklad.rust-analyzer
  code --install-extension ms-azuretools.vscode-docker
  code --install-extension MS-CEINTL.vscode-language-pack-it
  code --install-extension ms-python.python
  code --install-extension ms-python.vscode-pylance
  code --install-extension ms-toolsai.jupyter
  code --install-extension ms-toolsai.jupyter-keymap
  code --install-extension ms-toolsai.jupyter-renderers
  code --install-extension ms-vscode-remote.remote-containers
  code --install-extension ms-vscode-remote.remote-ssh
  code --install-extension ms-vscode-remote.remote-ssh-edit
  code --install-extension ms-vscode-remote.remote-wsl
  code --install-extension ms-vscode.cmake-tools
  code --install-extension ms-vscode.cpptools
  code --install-extension ms-vscode.cpptools-extension-pack
  code --install-extension ms-vscode.cpptools-themes
  code --install-extension mtxr.sqltools
  code --install-extension redhat.java
  code --install-extension rust-lang.rust
  code --install-extension serayuzgur.crates
  code --install-extension tomoki1207.pdf
  code --install-extension twxs.cmake
  code --install-extension usernamehw.errorlens
  code --install-extension vadimcn.vscode-lldb
  code --install-extension VisualStudioExptTeam.vscodeintellicode
  code --install-extension vscjava.vscode-java-debug
  code --install-extension vscjava.vscode-java-dependency
  code --install-extension vscjava.vscode-java-pack
  code --install-extension vscjava.vscode-java-test
  code --install-extension vscjava.vscode-maven
  code --install-extension VSpaceCode.whichkey
  code --install-extension yzhang.markdown-all-in-one
fi

# to obtain the list run:
# code --list-extensions | xargs -L 1 echo code --install-extension

# VSCodium does't have many plugins

#if [ -d ~/.config/VSCodium ]; then
  #mv ~/.config/VSCodium/User/keybindings.json ~/.config/VSCodium/User/keybindings_OLDS.json 
  #mv ~/.config/VSCodium/User/settings.json ~/.config/VSCodium/User/settings_OLDS.json 
  #mv .config/nvim-vscodium/settings.json ~/.config/VSCodium/User/  
  #mv .config/nvim-vscodium/keybindings.json ~/.config/VSCodium/User/  

  #codium --install-extension asvetliakov.vscode-neovim
  #codium --install-extension VSpaceCode.whichkey
  #codium --install-extension eamodio.gitlens
  #codium --install-extension usernamehw.errorlens
  #codium --install-extension bartoszmaka95.onedark
#fi
