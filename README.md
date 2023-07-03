# CitrusZest.nvim

`citruszest.nvim` features a combination of bright and juicy colors reminiscent of various citrus fruits. The primary colors include vibrant oranges, zesty yellows, and refreshing greens. These colors are carefully selected to provide a visually stimulating and attention-grabbing experience while coding.

# 🤞 Showcase

![Screenshot_2023-07-02-03-23-01_1920x1080](https://github.com/zootedb0t/citruszest.nvim/assets/62596687/ad44cfa5-a49c-4ff0-9d0f-e1c5bd236ee5)

![Screenshot_2023-07-02-03-21-52_1920x1080](https://github.com/zootedb0t/citruszest.nvim/assets/62596687/062f285e-1034-4ddb-87d7-7e91b1c58eaf)

# 👏 Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "zootedb0t/citruszest.nvim",
  priority = 1000,
  opts = {
    transparent = true, -- Enable/Disable transparency
    -- If you want to wish you override any highlight-group style. Add them inside `highlight` table.
    -- If you wish to override `Constant` highlight. You can do this inside `highlight` table.
    highlight = {
            Constant = { fg = "#FFFFFF", bold = true}
        },
  },
},
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use { "zootedb0t/citruszest.nvim",
    config = function()
    local cz = require("citruszest")
    cz.setup({
      transparent = true, -- Enable/Disable transparency
    })
    end
}
```

[vim-plug](https://github.com/junegunn/vim-plug)

```viml
Plug 'zootedb0t/citruszest.nvim' }
```

# 👀 Usage

Enable `colorscheme` after installation.

In `init.lua`

```lua
vim.cmd("colorscheme citruszest")
```

In `init.vim`

```viml
colorscheme citruszest
```

# 📌 Supported Plugins

- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Nvimtree](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-ts-rainbow2](https://gitlab.com/HiPhish/nvim-ts-rainbow2)
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [alpha.nvim](https://github.com/goolord/alpha-nvim)
- [whichkey.nvim](https://github.com/folke/which-key.nvim)

# 🙏 Acknowledgments

- [SpaceCamp](https://github.com/jaredgorski/SpaceCamp) - For inspiring me write my own colorscheme.
- [FluoroMachine.nvim](https://github.com/maxmx03/FluoroMachine.nvim) - For the beautiful colorscheme.
