<h1 align="center">
citrusdream.nvim

<a href="https://opensource.org/license/mit/" rel="nofollow"><img alt="LICENSE" src="https://img.shields.io/badge/License-MIT-blue.svg" style="max-width: 100%;"></a>
<a href="https://www.lua.org/"><img alt="Lua" src="https://img.shields.io/badge/Made_With-Lua-blue.svg?logo=lua" style="max-width:100%"></a>

</h1>

<p align="center">
<img alt="color_palette" style="width:90%" src="./misc/citruszest-palette.png">

<b>citrsudream.nvim</b> is a fork of citruszest.nvim.

</p>

## :fire: Showcase

TODO

## :wrench: Installation

> [!IMPORTANT]
>
> ### Requirement
>
> - **_Treesitter_** > v0.9.2 (Recommended)
> - Neovim >= v0.10.0

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "benjaminjellis/citrusdream.nvim",
  lazy = false,
  priority = 1000,
},
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use { "benjaminjellis/citrusdream.nvim", }
```

[vim-plug](https://github.com/junegunn/vim-plug)

```viml
Plug 'benjaminjellis/citrusdream.nvim'
```

## :question: Usage

Enable `colorscheme` after installation.

In `init.lua`

```lua
vim.cmd("colorscheme citrsudream")
```

In `init.vim`

```viml
colorscheme citrsudream
```

## :hammer: Configration

To find `highlight` group of word under cursor. Use `Inspect` command.

```lua
    -- For using default config leave this empty.
    require("citrsudream").setup({
        option = {
            transparent = false, -- Enable/Disable transparency
            bold = false,
            italic = true,
        },
        -- Override default highlight style in this table
        -- E.g If you want to override `Constant` highlight style
        style = {
        -- This will change Constant foreground color and make it bold.
        Constant = { fg = "#FFFFFF", bold = true}
        },
    })
```

`citrusdream` supports [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim/).

```lua
local lualine = require 'lualine'

lualine.setup {
  options = {
    theme = 'citrusdream',
  }
}
```

## :pushpin: Supported Plugins

- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Nvimtree](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-ts-rainbow2](https://gitlab.com/HiPhish/nvim-ts-rainbow2)
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [alpha.nvim](https://github.com/goolord/alpha-nvim)
- [whichkey.nvim](https://github.com/folke/which-key.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

## :fireworks: Integration

- [Kitty](https://github.com/kovidgoyal/kitty) users copy [this](extra/citruszest_kitty.conf) into their `kitty.conf`.
- `Xresources` is available [here](extra/citruszest_xresources).
- [Foot](https://codeberg.org/dnkl/foot) terminal users can use [this](extra/citruszest_foot).
- [iterm2](https://iterm2.com/) user can use [this](extra/citruszest.itermcolors).
- [Alacritty](https://alacritty.org/) user can use [this](extra/citruszest_alacritty.toml).
- [Konsole](https://konsole.kde.org/) user put [this](extra/Citruszest.colorscheme) into `~/.local/share/konsole/` and then select the theme on Konsole's profile settings
- [Wezterm](https://wezfurlong.org/wezterm/index.html) users can use [this](extra/citruszest_wezterm.toml)
- [Mutt](http://www.mutt.org/)/[Neomutt](https://neomutt.org/) users can add [this](extra/citruszest_mutt) (or the [256 color](extra/citruszest_mutt256) version) to their `[neo]muttrc`

## :art: Colors

| Color          | Value     | Background                                               |
| -------------- | --------- | -------------------------------------------------------- |
| Background     | `#121212` | ![background](https://place-hold.it/32/121212?text=+)    |
| Foreground     | `#BFBFBF` | ![foreground](https://place-hold.it/32/BFBFBF?text=+)    |
| Visual         | `#404040` | ![cursor](https://place-hold.it/32/404040?text=+)        |
| Cursor         | `#383838` | ![cursor](https://place-hold.it/32/666666?text=+)        |
| Black          | `#232323` | ![black](https://place-hold.it/32/232323?text=+)         |
| Red            | `#FF5454` | ![red](https://place-hold.it/32/FF5454?text=+)           |
| Green          | `#00CC7A` | ![green](https://place-hold.it/32/00CC7A?text=+)         |
| Yellow         | `#FFD700` | ![yellow](https://place-hold.it/32/F0D50C?text=+)        |
| Orange         | `#FF7431` | ![orange](https://place-hold.it/32/FF8C00?text=+)        |
| Blue           | `#00BFFF` | ![blue](https://place-hold.it/32/00BFFF?text=+)          |
| Cyan           | `#00FFFF` | ![cyan](https://place-hold.it/32/00FFFF?text=+)          |
| White          | `#BFBFBF` | ![white](https://place-hold.it/32/BFBFBF?text=+)         |
| Black(Bright)  | `#767C77` | ![bright_black](https://place-hold.it/32/808080?text=+)  |
| Red(Bright)    | `#FF1A75` | ![bright_red](https://place-hold.it/32/FF1A75?text=+)    |
| Green(Bright)  | `#1AFFA3` | ![bright_green](https://place-hold.it/32/1AFFA3?text=+)  |
| Yellow(Bright) | `#FFFF00` | ![bright_yellow](https://place-hold.it/32/FFFF00?text=+) |
| Orange(Bright) | `#FFAA54` | ![bright_orange](https://place-hold.it/32/FF9633?text=+) |
| Blue(Bright)   | `#28C9FF` | ![bright_blue](https://place-hold.it/32/33CFFF?text=+)   |
| Cyan(Bright)   | `#33FFFF` | ![bright_cyan](https://place-hold.it/32/33FFFF?text=+)   |
| White(Bright)  | `#F9F9F9` | ![bright_white](https://place-hold.it/32/F9F9F9?text=+)  |

## :pray: Acknowledgments

- [citruszest.nvim](https://github.com/zootedb0t/citruszest.nvim) -

<div align="center">
    <h4>
    Made in Neovim with 💕 For Neovim
    </h4>
</div>
