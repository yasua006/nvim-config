# Nvim Config
Min Nvim konfigurasjon.


## Første gang bruk
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

## Få med ikoner
[Nerd fonts](https://www.nerdfonts.com/font-downloads)

Jeg bruker Hack Nerd Font, siden det passer bra med "Hacker" terminalen.

> [!NOTE]
> Plug må installeres i autoload mappen
