<div align='center'>
  <h1>
    <a href='https://github.com/arctouch-magnochiabai/gnu.vim' target='_blank'>
     <span>G<img src='https://user-images.githubusercontent.com/101122677/220782485-0e5ea839-4f00-434d-94af-80d45f209bef.png'/>U.vim</span>
    </a>
  </h1>
  <h3 align='center'> <code>GNU.Vim</code> is a <a href='https://github.com/neovim/neovim'>Nvim</a> config focused on <code>Full Cycle</code> development</h3>
  <br/>
</div>
<div align='center'>
  <img src='https://img.shields.io/github/last-commit/arctouch-magnochiabai/gnu.vim?style=for-the-badge' />
  <img src='https://img.shields.io/github/issues-raw/arctouch-magnochiabai/gnu.vim?color=orange&style=for-the-badge' />
  <img src='https://img.shields.io/github/forks/arctouch-magnochiabai/gnu.vim?style=for-the-badge' />
  <p>
  <br/>
  · <a href='https://github.com/arctouch-magnochiabai/gnu.vim/issues' target='_blank'>
      Bug Report
    </a>
  · <a href='https://github.com/arctouch-magnochiabai/gnu.vim/issues' target='_blank'>
      Request Feature
    </a>
  </p>
  <img src='https://user-images.githubusercontent.com/101122677/220670113-b310075a-056d-42b7-9134-2ad2f37839c5.png' />
  <br/>
  <img src='https://user-images.githubusercontent.com/101122677/220670406-f36498aa-0fc4-4834-8b4e-82578543449b.png' />
  <br/>
</div>

# Prerequisites

| Required                                                          |
| ----------------------------------------------------------------- |
| [NodeJS](https://nodejs.org/en/download/)                         |
| [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) |

# Installation

```sh
sh -c "$(curl -s https://github.com/arctouch-magnochiabai/gnu.vim/blob/67d84b7d5fb76f989c26ca06a338ef91e2501129/install.sh)"
```

- [install.sh](https://raw.githubusercontent.com/arctouch-magnochiabai/gnu.vim/main/install.sh)
  - clone `gnu.vim`
  - Globally install typescript typescript-language-server vscode-langservers-extracted emmet-ls with npm
  - clone and build sumneko

# Recomendation

| Info                                                |           Description            |                                                                                                              Config |
| :-------------------------------------------------- | :------------------------------: | ------------------------------------------------------------------------------------------------------------------: |
| `OS`                                                |          MacOS or Linux          |                                                                                                                     |
| [Wezterm](https://github.com/wez/wezterm)           | Cross-platform terminal emulator |       [~/.config/wezterm/wezterm.lua](https://raw.githubusercontent.com/hemedani/dotfiles/main/wezterm/wezterm.lua) |
| [LazyGit](https://github.com/jesseduffield/lazygit) |   Terminal UI for git commands   | [~/.config/gitui/key_bindings.ron](https://raw.githubusercontent.com/hemedani/dotfiles/main/gitui/key_bindings.ron) |
| [JiraCli](https://github.com/ankitpokhrel/jira-cli) |        Jira Command Line         |                                                           brew tap ankitpokhrel/jira-cli<br/> brew install jira-cli |

# Supported Languages

|      | <code>List</code> |       |
| ---- | ----------------- | ----- |
| html | lua               | py    |
| css  | vim               | rb    |
| js   | sh                | rust  |
| ts   | go                | c/c++ |
| json | php               | yaml  |

<b>You can always check <code>:Mason</code> for more supported languages</b>

## Plugins

|                                                                                    Plugin |                                                Description |                Key |
| ----------------------------------------------------------------------------------------: | ---------------------------------------------------------: | -----------------: |
|                                            [alpha](https://github.com/goolord/alpha-nvim) |             Fast and fully programmable greeter for neovim |             `auto` |
|                                                [lazy](https://github.com/folke/lazy.nvim) |                           Modern plugin manager for Neovim |             `auto` |
|                                              [noice](https://github.com/folke/noice.nvim) |            Highly experimental plugin that replaces the UI |             `auto` |
|                                         [notify](https://github.com/rcarriga/nvim-notify) |     A fancy, configurable, notification manager for NeoVim |             `auto` |
|                                                [cmp](https://github.com/hrsh7th/nvim-cmp) |       A completion engine plugin for neovim written in Lua |             `auto` |
|                                  [codeium](https://github.com/Exafunction/codeium.vim) |                         Free, ultrafast Copilot alternative for Vim and Neovim |             `auto` |
|                                          [cmp-git](https://github.com/petertriho/cmp-git) |              A source for cmp.nvim for git commit messages |             `auto` |
|                                    [gitsigns](https://github.com/lewis6991/gitsigns.nvim) |                                 Super fast git decorations |             `auto` |
|                                     [autopairs](https://github.com/windwp/nvim-autopairs) |                           A super powerful autopair plugin |             `auto` |
|                                       [battery](https://github.com/justinhj/battery.nvim) |                          View information on battery power |             `auto` |
|                                  [bufferline](https://github.com/akinsho/bufferline.nvim) |                             A snazzy bufferline for Neovim |             `auto` |
| [right-corner-diagnostics](https://github.com/santigo-zero/right-corner-diagnostics.nvim) |    A Neovim plugin to show diagnostics in the right corner |             `auto` |
|           [cursorhold-timeout](https://github.com/tanchihpin0517/cursorhold-timeout.nvim) |               A plugin to set timeout for cursorhold event |             `auto` |
|                                 [cursorline](https://github.com/yamatsum/nvim-cursorline) |         Highlight words and lines on the cursor for Neovim |             `auto` |
|                                            [fidget](https://github.com/j-hui/fidget.nvim) |                        Standalone UI for nvim-lsp progress |             `auto` |
|                                         [hlargs](https://github.com/m-demare/hlargs.nvim) |                   A plugin to highlight function arguments |             `auto` |
|                                   [hlslens](https://github.com/kevinhwang91/nvim-hlslens) |             Helps you better glance at matched information |             `auto` |
|                           [import-cost](https://github.com/barrett-ruth/import-cost.nvim) |                   Display the size of the required package |             `auto` |
|                                        [lspkind](https://github.com/onsails/lspkind.nvim) |           vscode-like pictograms for neovim lsp completion |             `auto` |
|                                    [lsp-colors](https://github.com/folke/lsp-colors.nvim) |                                     LSP diagnostics colors |             `auto` |
|                                   [lualine](https://github.com/nvim-lualine/lualine.nvim) |     A blazing fast and easy to configure neovim statusline |             `auto` |
|                                    [namespace](https://github.com/ccaglak/namespace.nvim) |                              Neovim Php Namespace Resolver |             `auto` |
|                                            [neodev](https://github.com/folke/neodev.nvim) |                        A Neovim plugin to help you develop |             `auto` |
|                                     [neoscroll](https://github.com/karb94/neoscroll.nvim) |                                           Smooth scrolling |             `auto` |
|                             [none-ls](https://github.com/nvimtools/none-ls.nvim)          |                   A collection of built-in null-ls sources |             `auto` |
|                                [smartcolumn](https://github.com/m4xshen/smartcolumn.nvim) |                      Hiding your colorcolumn when unneeded |             `auto` |
|                                       [tidy](https://github.com/mcauley-penney/tidy.nvim) |        An autocommand that removes all trailing whitespace |             `auto` |
|                          [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) |       Nvim Treesitter configurations and abstraction layer |             `auto` |
|          [treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) |                     Lightweight alternative to context.vim |             `auto` |
|                                        [twilight](https://github.com/folke/twilight.nvim) |                    A Neovim plugin to dim inactive windows |             `auto` |
|                           [mason-null-ls](https://github.com/jay-babu/mason-null-ls.nvim) |          Mason-null-ls bridges mason.nvim with the null-ls |             `auto` |
|                [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) |   Indentation guides to all lines (including empty lines). |             `auto` |
|                                       [mason](https://github.com/williamboman/mason.nvim) |                       A package manager for Neovim plugins |           `:Mason` |
|                                     [vim-fugitive](https://github.com/tpope/vim-fugitive) |                 Fugitive is the premier Vim plugin for Git |             `:Git` |
|                                     [diffview](https://github.com/sindrets/diffview.nvim) |                     A file tree and diff viewer for Neovim |    `:DiffViewOpen` |
|                              [git-conflict](https://github.com/akinsho/git-conflict.nvim) |              A Neovim plugin to help resolve git conflicts |     `:GitConflict` |
|                             [telescope](https://github.com/nvim-telescope/telescope.nvim) |                                Find, Filter, Preview, Pick |       `:Telescope` |
|                                        [zen-mode](https://github.com/folke/zen-mode.nvim) |              Distraction-free coding or writing in Neovim. |         `:ZenMode` |
|                                      [which-key](https://github.com/folke/which-key.nvim) |                Displays a popup with possible key bindings |           `Leader` |
|                                          [trouble](https://github.com/folke/trouble.nvim) |                       A pretty diagnostics list for Neovim |         `:Trouble` |
|                       [markdown-preview](https://github.com/iamcco/markdown-preview.nvim) |                                         Markdown Previewer | `:MarkdownPreview` |
|                                            [octo](https://github.com/pwntester/octo.nvim) |            Edit and review GitHub issues and pull requests |         `Leader+O` |
|                                            [jester](https://github.com/David-Kunz/jester) |                     A Neovim plugin to run tests with jest |         `Leader+j` |
|                                                [hop](https://github.com/phaazon/hop.nvim) |               Easy-motion without messing with your buffer |         `Leader+h` |
|                                        [lspsaga](https://github.com/glepnir/lspsaga.nvim) |                                   A lightweight LSP plugin |         `Leader+S` |
|                                        [neotest](https://github.com/nvim-neotest/neotest) |                     A framework for interacting with tests |         `Leader+N` |
|                                  [toggleterm](https://github.com/akinsho/toggleterm.nvim) |                     Persist and toggle multiples terminals |        `Leader+tf` |
|                                    [tree.lua](https://github.com/nvim-tree/nvim-tree.lua) |                                       A file explorer tree |         `Leader+e` |
|                                         [urlview](https://github.com/axieax/urlview.nvim) |                         A plugin to open urls in a browser |         `Leader+u` |
|                                    [weather](https://github.com/ellisonleao/weather.nvim) |                         A simple weather plugin for Neovim |         `Leader+w` |
|                                      [jira-cli](https://github.com/ankitpokhrel/jira-cli) |                                Custom command to load Jira |         `Leader+J` |
|                                      [nvim-dap](https://github.com/mfussenegger/nvim-dap) |                      Debug Adapter Protocol implementation |         `Leader+d` |
|                                   [translate](https://github.com/uga-rosa/translate.nvim) |   A simple plugin to translate text using Google Translate |              `g?t` |
|                          [better-escape](https://github.com/max397574/better-escape.nvim) |                             A better escape key for Neovim |         `jk,jj,kj` |
|                                       [Comment](https://github.com/numToStr/Comment.nvim) |                   Comment plugin for Neovim written in Lua |         `g+c,g+cc` |
|                                        [orgmode](https://github.com/nvim-orgmode/orgmode) |                               Orgmode clone written in Lua |              `g?a` |
|                            [debugprint](https://github.com/andrewferrier/debugprint.nvim) | A plugin to print the value of a variable under the cursor |              `g?v` |
|                                              [leap](https://github.com/ggandor/leap.nvim) |                A plugin for fast cursor movement in Neovim |              `s,S` |
|                           [refactoring](https://github.com/ThePrimeagen/refactoring.nvim) |                         A plugin for refactoring in Neovim |              `g?r` |
|                          [regexplainer](https://github.com/bennypowers/nvim-regexplainer) |           Describe the regular expression under the cursor |               `gR` |
|                                              [ssr](https://github.com/cshuaimin/ssr.nvim) |                   Structural search and replace for Neovim |               `gr` |

## Uninstall

```sh
. ~/.config/nvim/uninstaller.sh
```

- The command above will remove `gnu.vim` configuration files
  - `remove(~/.config/nvim && ~/.local/share/nvim && ~/.cache/nvim)`
