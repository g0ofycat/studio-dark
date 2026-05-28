# studio-dark.nvim

Neovim colorscheme similar to Roblox Studio, darker tone.

## Colors

| Role | Hex |
|------|-----|
| Background | `#0f0f11` |
| Foreground | `#bcbec8` |
| Red (soft) | `#f19191` |
| Red (hard) | `#ec4949` |
| Red (vivid) | `#fd3561` |
| Green | `#8ee9b6` |
| Yellow | `#f3eb8c` |
| Cyan | `#6de5ff` |

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "g0ofycat/studio-dark",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme studio-dark")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "g0ofycat/studio-dark",
  config = function()
    vim.cmd("colorscheme studio-dark")
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'g0ofycat/studio-dark'
```
Then in your config:
```vim
colorscheme studio-dark
```

## Usage

### Via colorscheme command

```lua
vim.cmd("colorscheme studio-dark")
```

### Via require (e.g. to access the palette)

```lua
require("studio-dark").load()

local c = require("studio-dark").colors
-- // c.green, c.cyan, c.bg, etc.
```
