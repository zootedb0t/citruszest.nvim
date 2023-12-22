<h1 align="center">
citruszest.nvim

<a href="https://opensource.org/license/mit/" rel="nofollow"><img alt="LICENSE" src="https://img.shields.io/badge/License-MIT-blue.svg" style="max-width: 100%;"></a>
<a href="https://www.lua.org/"><img alt="Lua" src="https://img.shields.io/badge/Made_With-Lua-blue.svg?logo=lua" style="max-width:100%"></a>
[![Luacheck](https://github.com/zootedb0t/citruszest.nvim/actions/workflows/luacheck.yml/badge.svg)](https://github.com/zootedb0t/citruszest.nvim/actions/workflows/luacheck.yml)

</h1>

<p align="center">
<img alt="color_palette" style="width:90%" src="./misc/citruszest-palette.png">

<b>citruszest.nvim</b> features a combination of bright and juicy colors reminiscent of various citrus fruits. The primary colors include vibrant oranges, zesty yellows, and refreshing greens. These colors are carefully selected to provide a visually stimulating and attention-grabbing experience while coding.

</p>

## :fire: Showcase

![Screenshot_2023-12-15-15-40-28](https://github.com/zootedb0t/citruszest.nvim/assets/62596687/844d3114-189e-4720-ad86-0208ddb1e919)

![Screenshot_2023-11-08-09-14-48_1920x1080](https://github.com/zootedb0t/citruszest.nvim/assets/62596687/0ca018ef-2837-43e0-8b33-a8fd2e9d6e0c)

![Screenshot_2023-11-08-09-11-41_1920x1080](https://github.com/zootedb0t/citruszest.nvim/assets/62596687/f8b07699-7d33-4aea-b029-627271400edf)

## :wrench: Installation

### Requirement

- ***Treesitter*** (Recommended)
- Neovim >= 0.9.1

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "zootedb0t/citruszest.nvim",
  lazy = false,
  priority = 1000,
},
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use { "zootedb0t/citruszest.nvim" }
```

[vim-plug](https://github.com/junegunn/vim-plug)

```viml
Plug 'zootedb0t/citruszest.nvim'
```

## :question: Usage

Enable `colorscheme` after installation.

In `init.lua`

```lua
vim.cmd("colorscheme citruszest")
```

In `init.vim`

```viml
colorscheme citruszest
```

## :hammer: Configration

To find `highlight` group of word under cursor. Use `Inspect` command.

```lua
    -- For using default config leave this empty.
    require("citruszest").setup({
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

`citruszest` supports [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim/).

```lua
local lualine = require 'lualine'

lualine.setup {
  options = {
    theme = 'citruszest',
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

## :fireworks: Integration

- [Kitty](https://github.com/kovidgoyal/kitty) users copy [this](extra/kitty-theme.conf) into their `kitty.conf`.
- `Xresources` is available [here](extra/xresources).
- [Foot](https://codeberg.org/dnkl/foot) terminal users can use [this](extra/foot-terminal).
- [iterm2](https://iterm2.com/) user can use [this](extra/citruszest.itermcolors).

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
| Yellow         | `#FFD700` | ![Yellow](https://place-hold.it/32/F0D50C?text=+)        |
| Orange         | `#FF7431` | ![Orange](https://place-hold.it/32/FF8C00?text=+)        |
| Blue           | `#00BFFF` | ![purple](https://place-hold.it/32/00BFFF?text=+)        |
| Cyan           | `#48D1CC` | ![Cyan](https://place-hold.it/32/48D1CC?text=+)          |
| White          | `#BFBFBF` | ![white](https://place-hold.it/32/BFBFBF?text=+)         |
| Black(Bright)  | `#767C77` | ![bright_black](https://place-hold.it/32/808080?text=+)  |
| Red(Bright)    | `#FF1A75` | ![bright_red](https://place-hold.it/32/FF1A75?text=+)    |
| Green(Bright)  | `#1AFFA3` | ![bright_green](https://place-hold.it/32/1AFFA3?text=+)  |
| Yellow(Bright) | `#FFFF00` | ![bright_yellow](https://place-hold.it/32/FFFF00?text=+) |
| Orange(Bright) | `#FFAA54` | ![bright_orange](https://place-hold.it/32/FF9633?text=+) |
| Blue(Bright)   | `#28C9FF` | ![bright_purple](https://place-hold.it/32/33CFFF?text=+) |
| Cyan(Bright)   | `#09FFF2` | ![bright_cyan](https://place-hold.it/32/00FFF2?text=+)   |
| White(Bright)  | `#F9F9F9` | ![bright_cyan](https://place-hold.it/32/F9F9F9?text=+)   |

## :pray: Acknowledgments

- [SpaceCamp](https://github.com/jaredgorski/SpaceCamp) - For inspiring me write my own colorscheme.
- [FluoroMachine.nvim](https://github.com/maxmx03/FluoroMachine.nvim) - For the beautiful colorscheme.
- [catppuccin](https://github.com/catppuccin/nvim) - For describing highlight groups.

<div align="center">
    <h4>
    Made in Neovim with 💕 For Neovim
    </h4>
</div>
