# studio-dark.nvim

Neovim colorscheme similar to Roblox Studio, darker tone.

## Colors

```lua
studio_dark.colors = {
	bg           = "#111216",
	bg_dark      = "#0c0d10",
	bg_light     = "#1a1d24",
	bg_lighter   = "#23262f",

	fg           = "#d7dae0",
	fg_dark      = "#a7adb8",
	fg_gutter    = "#5b6270",

	border       = "#2a2f3a",
	cursorline   = "#1b1f27",
	selection    = "#253047",

	red          = "#f06d6d",
	orange       = "#e6a86b",
	yellow       = "#e7d58c",
	green        = "#7fcf9b",
	cyan         = "#73c7ff",
	blue         = "#5ea7ff",
	purple       = "#b48ef7",

	comment      = "#6b7280",
}
```

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
