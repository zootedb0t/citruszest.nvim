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
  lazy = true,
  priority = 1000,
  opts = {
    transparent = true, -- Enable/Disable transparency
  },
},
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use { "zootedb0t/citruszest.nvim", as = "citruszest" }
```

[vim-plug](https://github.com/junegunn/vim-plug)

```viml
Plug 'zootedb0t/citruszest.nvim', { 'as': 'citruszest' }
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

# 🙏 Acknowledgments

- [SpaceCamp](https://github.com/jaredgorski/SpaceCamp) - For inspiring me write my own colorscheme.
- [FluoroMachine.nvim](https://github.com/maxmx03/FluoroMachine.nvim) - For the beautiful colorscheme.
