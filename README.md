# CitrusZest.nvim

`citruszest.nvim` features a combination of bright and juicy colors reminiscent of various citrus fruits. The primary colors include vibrant oranges, zesty yellows, and refreshing greens. These colors are carefully selected to provide a visually stimulating and attention-grabbing experience while coding.

# 👏 Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "zootedb0t/citruszest.nvim", name = "citruszest", lazy = true, priority = 1000 },
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
