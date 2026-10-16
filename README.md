# Neovim

Welcome to my Neovim configuration! This configuration is tailored to provide a streamlined and efficient Neovim experience with a focus on simplicity and productivity.

![](/static/nvim.png)

## Dependencies

1. Neovim 0.12+
2. git
3. ripgrep
4. tree-sitter-cli
5. A C compiler (gcc or clang)

## Installation

1. Make sure you installed the dependencies mentioned above.
2. Create backup of below mentioned directories and delete them.
   - ~/.cache/nvim
   - ~/.config/nvim
   - ~/.local/share/nvim
   - ~/.local/state/nvim
3. Clone this repository:

   ```bash
   git clone https://github.com/hereliesadvaith/Nvim.git ~/.config/nvim
   ```
4. Open Neovim and wait for Lazy package manager to install the plugins. Treesitter parsers build in the background, so restart Neovim once they are done.

On Arch based distros the dependencies can be installed with:

```bash
sudo pacman -S --needed neovim git ripgrep tree-sitter-cli gcc
```

## Features

A clean and minimal configuration to keep things simple. You can easily add your plugins, keybindings and settings to make it truly yours. The key plugins used for this configuration is mentioned below. Click on the links to know more about the plugins.

- [Lazy](https://github.com/folke/lazy.nvim)
- [Catppuccin](https://github.com/catppuccin/nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Neotree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Tmux-Navigator](https://github.com/christoomey/vim-tmux-navigator)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Comment](https://github.com/numToStr/Comment.nvim)
- [Indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Autopairs](https://github.com/windwp/nvim-autopairs)

Plugin versions are pinned in `lazy-lock.json`. Run `:Lazy restore` to install exactly those versions, or `:Lazy update` to move to the latest ones.
