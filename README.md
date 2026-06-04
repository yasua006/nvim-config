# Nvim Config
Min Nvim konfigurasjon.


## Setup
- **MacOS:** `brew install nvim`
- **Windows:** `winget install Neovim.Neovim`

Kopi av repo:
```sh
git clone https://github.com/yasua006/nvim-config
```

Bytt navn fra nvim-config:
```sh
mv nvim-config nvim
```

Feil melding vises når nvim åpnes. Da installerer jeg plugins med "Plug":
```sh
:PlugInstall
```

Etter på, installerer jeg COQ dependencies:
```sh
:COQdeps
```


## Installering
### Ikoner
[Nerd fonts](https://www.nerdfonts.com/font-downloads)

Jeg bruker Hack Nerd Font, siden det passer bra med "Hacker" terminalen.

### Live Server
Installer live server. Den beste måten er via NPM:
```sh
npm install -g live-server
```

### LazyGit
Installer lazygit. Jo mindre repetisjon av git kommandoer, jo bedre.
- **MacOS:** `brew install lazygit`
- **Windows:** `winget install JesseDuffield.lazygit`

For å åpne lazygit i nvim: `:LazyGit`.

> [!NOTE]
> Plug må installeres i autoload mappen
>
> Hvis på Windows, bytt is_on_windows til true i plug_installs.lua
