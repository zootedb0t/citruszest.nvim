# CitrusZest.nvim

`citruszest.nvim` features a combination of bright and juicy colors reminiscent of various citrus fruits. The primary colors include vibrant oranges, zesty yellows, and refreshing greens. These colors are carefully selected to provide a visually stimulating and attention-grabbing experience while coding.

# 🤞 Showcase

![Screenshot_2023-06-30-10-37-59_1920x1080](https://github.com/zootedb0t/citruszest.nvim/assets/62596687/a4ec80a0-7321-4b04-80fa-f5867b32880c)

![Screenshot_2023-06-30-10-43-55_1920x1080](https://github.com/zootedb0t/citruszest.nvim/assets/62596687/095b5c2e-8f67-41b1-841f-9e222e9f39bf)

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
