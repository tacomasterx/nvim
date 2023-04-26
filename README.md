***Language***
- [:es: Español](./README.es.md)
- :us: English

This is my attempt at creating my own neovim configuration using lua instead of vimscript (and not just cloning someone else's). At first, I thought I could get away with just installing the same plugins I was used to, but that was not a proper "lua conversion" so I started switching pluggins.
I started working on my Windows machine, so I could make my configuration work on it first and avoid the problems I faced last time (I started using neovim on a Linux lite machine, then moved to Arch), most of my configuration did not work when I tried at Windows, so I created diferent branches and removed/switched some stuff, but the difference was really obvious every time I used sitched platforms, I'm trying to avoid that as much as possible now.

## Requirements
* My neovim version is:
  * NVIM **v0.8.1**
  * LuaJIT **2.1.0-beta3**
  * Most installed pluggins require at least **v0.8.0**
* My Git version is:
  * git version **2.33.0.windows.2**
  * Most installed pluggins require at least **2.19.0**
* Any [Nerd Font](https://www.nerdfonts.com/) __(optional)__
* Make sure you have the following dependecies installed, I used chocolatey for Windows, pacman for Linux:
  * ripgrep
  * sed
* TreeSitter and Mason pluggins are configured to "ensure install" the following:
  * Rust (my cargo version is **1.66.0**)
  * Ruby (I use **2.7.1**, **3.0.4** and **3.2.1**) but regardless of version just `gem install solargraph`
  * Python, just `pip install pyright`

### For Windows
* Install [MingW](https://osdn.net/projects/mingw/downloads/68260/mingw-get-setup.exe/)
  1. Only the **C/C++** compiler is needed
  2. Here you can find an [spanish step by step guide](https://platzi.com/tutoriales/1189-algoritmos-2017/1901-como-instalar-gcc-para-compilar-programas-en-c-desde-la-consola-en-windows/)
  3. Add MingW\bin to path

In order to avoid an annoying Treesitter issue, I had to install LLVM for clang compiler. I used chocolatey package manager for it. There is a line in `.\init.lua` with a comment about this problem, if you are going to use an alternative or none at all, just delete that line.

### For Linux
WIP...
Hopefully it works without major tweaks.

## Instructions
### Windows: (For a better experience use the Windows Terminal and Power Shell)
0. Backup your `$HOME\AppData\Local\nvim\` and `$HOME\AppData\Local\nvim-data\`
1. `git clone` this repository to `$HOME\AppData\Local\`
2. Run `nvim`

### Linux:
0. Backup your `$HOME/.config/nvim/` and `$HOME/.local/share/nvim/`
1. `git clone` this repository to `$HOME/.config/`
2. Run `nvim`

### General:
3. Try to use Lazy:
  * Select Lazy pluggin install at the dashboard
  * Press **Space bar** then **l**
  * Or use the command `:Lazy`
4. For syntax highlight and lsp support:
    1. Use the command `:TSInstall language_server_name` check the available list [here](https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers)
    2. Use the command `:Mason` and wait for it to finish
    3. Open the file `nvim/lua/config/plugin/init.lua`
    4. Search for `Setup language servers`
    5. Add the languaje server setup (`lspconfig.language_server_name.setup {}`)
    6. Restart neovim, just in case
