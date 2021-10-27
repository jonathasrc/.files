# @jonathasrc - dotfiles

This repository holds my personal configuration for my development environment
and the tooling and utilities I use.
## I3WM
### Desktop Environment

- i3-gaps
- i3-status-rust
- i3-wallpapers
- manjaro-i3-settings
- i3lock

    ```bash
    # fazendo backup das configuração original do i3wm
    mv ~/.config/i3/config ~/.config/i3/config.original

    # Minha configuração do i3wm 
    ln -s ~/github/dotfiles/i3/config ~/.config/i3/
    ```
## Fonts
    - MeslogLGS nf
        ```bash 
        # Faça Download de todas as fontes que precisa e coloque neste diretorio
        mv ~̣/github/dotfiles/fonts/ ~/.local/share/
        fc-cache -f
        ```
## Terminal
- Alacritty
    ```bash
    ln -s ~/github/dotfiles/alacritty ~/.config/
    ```
- ZSH
    ```bash
    # Fazendo backup da configuração original do ZSH
    mv ~/.zshrc ~/.zshrc.original

    # Inserindo minha configuração 
    ln -s ~/github/dotfiles/.zshrc ~/

    ```
- [Oh-My-Zsh](https://ohmyz.sh/#install)
   - Plugins external:
      - Poetry
          ```bash
          # Oh-My-Zsh
          mkdir $ZSH_CUSTOM/plugins/poetry
          poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
          ```
      - [fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting)
      - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
      - 
- powerlevel10k
- Tmux
- [Oh-My-Tmux](https://github.com/gpakosz/.tmux)
```bash
ln -s ~/github/dotfiles/.tmux.conf.local
```

## Editor
 - [Neovim](https://github.com/neovim/neovim)
     ```bash
     # config do neovim
     ln -s ~/github/dotfiles/init.vim ~/.config/nvim/
     ```
 - [Vim-Plug](https://github.com/junegunn/vim-plug)
     ```bash 
     # Instalação modo flatpak
     ln -s ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/ ~/.config/nvim/
     ```
 - python-neovim
 - xclip
     -
### auto complete
 - coc.nvim
    - coc-explorer
    - coc-highlight
    - coc-jedi
    - coc-snippets
    - coc-sh

## Application
- Snapd
   - authy
- Flatpak

- flathub
## Developer APP
 - Git
     ```bash
     # Inserindo as configuração do Git
     ln -s ~/github/git ~/.config/
     ```
 - [Docker](https://www.docker.com/)
 - [Terraform](https://www.terraform.io/docs/index.html#get-started)
 - [Vagrant](https://www.vagrantup.com/)
 - [aws-cli:2](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
 - github-cli
 - [Poetry](https://python-poetry.org/docs/)
 - fzf

