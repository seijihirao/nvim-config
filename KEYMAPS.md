# Neovim keymaps

Leader is `<Space>`. Press `<Space>` and pause to get the which-key menu with every group.
Custom mappings live in `lua/core/remap.lua` and `lua/plugins/*.lua`; everything else is the
[LazyVim default](https://www.lazyvim.org/keymaps).

## Navigation

| Key | Action |
|---|---|
| `zz` / `zt` / `zb` | Cursor line to center / top / bottom |
| `<C-d>` / `<C-u>` | Half page down / up (custom: keeps cursor centered) |
| `<C-e>` / `<C-y>` | Scroll one line, cursor stays |
| `<C-f>` / `<C-b>` | Full page down / up |
| `n` / `N` | Next / previous search hit (custom: recentered) |
| `<C-o>` / `<C-i>` | Jump back / forward (after `gd`, searches, etc.) |
| `<leader><leader>` / `<leader>ff` | Find files |
| `<leader>sg` | Grep project (respects .gitignore) |
| `<leader>fg` | Grep project including ignored files (custom) |
| `<leader>fp` | Find plugin source file (custom) |
| `<leader>e` | File explorer (neo-tree, floating) |

## LSP / IDE

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gI` | Go to implementation |
| `gr` | References |
| `gy` | Go to type definition |
| `gD` | Go to declaration |
| `K` | Hover docs |
| `gK` / `<C-k>` (insert) | Signature help |
| `<leader>ca` | Code action |
| `<leader>cr` | Rename symbol |
| `<leader>cf` | Format (LazyVim) |
| `<leader>f` | Format via LSP (custom, shadows the `<leader>f` group so which-key waits) |
| `<leader>cs` | Symbol outline (Trouble) |
| `<leader>cl` | LSP definitions / references panel (Trouble) |
| `<leader>ss` | Search symbols in file |
| `]d` / `[d` | Next / previous diagnostic |
| `<leader>xx` / `<leader>xX` | Diagnostics: project / current buffer (Trouble) |
| `<leader>xQ` / `<leader>xL` | Quickfix / location list (Trouble) |

Go extras (`lua/plugins/go.lua`): `<leader>tt` run nearest test, `<leader>tf` test file,
`<leader>db` toggle breakpoint, `<leader>dc` continue.

## Buffers, windows, tabs

| Key | Action |
|---|---|
| `<S-h>` / `<S-l>` | Previous / next buffer |
| `<leader>1`..`9` | Jump to buffer N in the bufferline (custom) |
| `<leader>,` | Buffer picker |
| `<leader>bd` / `<leader>bw` | Close buffer |
| `<leader>bp` | Pin buffer (custom) |
| `<leader>%` / `<leader>"` | Split vertically / horizontally (custom, tmux-style) |
| `<A-Left/Right/Up/Down>` | Move between splits and tmux panes (Navigator, custom) |
| `<A-Backspace>` | Previous split (custom) |
| `<leader><tab><tab>` | New tab |
| `<leader><tab>]` / `[` | Next / previous tab |
| `<leader><tab>d` | Close tab |

Vim tabs hold a window layout; for one-file-per-tab behavior use buffers instead.

## Editing

| Key | Action |
|---|---|
| `J` / `K` (visual) | Move selection down / up (custom) |
| `J` (normal) | Join next line, cursor stays (custom) |
| `Q` | Disabled (custom) |
| `<leader>gd` | Preview git hunk under cursor (custom) |
| `<leader>gg` | Lazygit |
| `<leader>cf` | Format |
| `gcc` / `gc` (visual) | Toggle comment |

## Config

| Key / Command | Action |
|---|---|
| `:so %` | Re-source the current Lua/Vim file |
| `:Lazy` | Plugin manager |
| `:Mason` | LSP / formatter installer |
| `:LazyExtras` | Toggle LazyVim extras |
