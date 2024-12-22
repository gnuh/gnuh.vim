<div align='center'>
  <h1>
    <a href='https://github.com/gnuh/gnuh.vim' target='_blank'>
     <span>G<img src='https://user-images.githubusercontent.com/101122677/220782485-0e5ea839-4f00-434d-94af-80d45f209bef.png'/>U.vim</span>
    </a>
  </h1>
  <h3 align='center'> <code>Gnuh.vim</code> is a personal extension from the <a href="https://github.com/LazyVim/LazyVim"><code>LazyVim</code></a> project</h3>
  <br/>
</div>
<div align='center'>
  <img src='https://img.shields.io/github/last-commit/gnuh/gnuh.vim?style=for-the-badge' />
  <img src='https://img.shields.io/github/issues-raw/gnuh/gnuh.vim?color=orange&style=for-the-badge' />
  <img src='https://img.shields.io/github/forks/gnuh/gnuh.vim?style=for-the-badge' />
  <p>
  <br/>
  · <a href='https://github.com/gnuh/gnuh.vim/issues' target='_blank'>
      Bug Report
    </a>
  · <a href='https://github.com/gnuh/gnuh.vim/issues' target='_blank'>
      Request Feature
    </a>
  </p>
  <img src='https://user-images.githubusercontent.com/101122677/220670113-b310075a-056d-42b7-9134-2ad2f37839c5.png' />
  <br/>
</div>

# Prerequisites

| Required                                                          |
| ----------------------------------------------------------------- |
| [NodeJS](https://nodejs.org/en/download/)                         |
| [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) |

# Installation

```sh
sh -c "$(curl -s https://raw.githubusercontent.com/gnuh/gnuh.vim/main/install.sh)"
```

- [install.sh](https://raw.githubusercontent.com/gnuh/gnuh.vim/main/install.sh)
  - clone `gnuh.vim`
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

## Uninstall

```sh
. ~/.config/nvim/uninstaller.sh
```

- The command above will remove `gnuh.vim` configuration files
  - `remove(~/.config/nvim && ~/.local/share/nvim && ~/.cache/nvim)`
