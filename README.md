# Arch ChezMoi Dotfiles

> Estado capturado com `pacman -Qe` em 25 de dezembro de 2025.

## Stack Base
- **Distro:** [Arch Linux](https://archlinux.org/)
- **WM/Compositor:** [Hyprland](https://hyprland.org/) (Wayland) + [Qtile](https://qtile.org/) (X11)
- **Terminal padrão:** [foot](https://codeberg.org/dnkl/foot)
- **Shell:** `zsh` + [oh-my-zsh](https://ohmyz.sh/) + `powerlevel10k`
- **Editor principal:** [Neovim](https://neovim.io/) (LazyVim) com apoio de VS Code e Obsidian
- **Status/desktop services:** Waybar, dunst, hyprpaper, cliphist, copyq

## Aplicativos destacados e cobertura de configs

Legenda:
- `[x]` config vive em `~/.config` **e** está versionada pelo chezmoi.
- `[ ]` config existe em `~/.config`, mas ainda não foi adicionada ao chezmoi.
- As anotações "sem ~/.config" indicam apps que guardam dados em outro lugar (ex.: `~/.mozilla`, `~/.wezterm.lua`, `/var/lib/*`).

### Terminais e Multiplexadores
- [x] foot — `~/.config/foot` (dot_config/foot)
- [x] Alacritty — `~/.config/alacritty`
- [ ] Contour — `~/.config/contour` (faltando no chezmoi)
- [ ] WezTerm — sem `~/.config` (usa `~/.wezterm.lua`)
- [x] Terminator — `~/.config/terminator`
- [ ] tmux — sem `~/.config` (usa `~/.tmux.conf` direto na home)
- [ ] zellij — `~/.config/zellij` (ainda fora do chezmoi)

### Launchers, Shells Gráficas e Indicadores
- [x] Hyprland — `~/.config/hypr` (inclui hyprpaper, autostart, keybinds)
- [x] Qtile — `~/.config/qtile`
- [x] Waybar — `~/.config/waybar`
- [x] dunst — `~/.config/dunst`
- [x] picom — `~/.config/picom`
- [x] rofi — `~/.config/rofi`
- [ ] walker — `~/.config/walker`
- [ ] wofi — sem `~/.config` (usa defaults)
- [ ] fuzzel — `~/.config/fuzzel`
- [ ] hyprlauncher — sem `~/.config` (usa `~/.local/share`)
- [ ] copyq — `~/.config/copyq`
- [ ] cliphist — sem `~/.config` dedicado (histórico em SQLite dentro de `~/.local/share/cliphist`)

### Navegadores e Web
- [ ] Firefox — sem `~/.config` (usa `~/.mozilla`)
- [ ] Google Chrome — `~/.config/google-chrome`
- [ ] Jellyfin Web (PWA) — sem arquivos locais; usa o servidor Jellyfin

### Produtividade, Notas e Escritório
- [ ] LibreOffice Still — `~/.config/libreoffice`
- [ ] Obsidian — `~/.config/obsidian`
- [ ] Calibre — `~/.config/calibre`
- [ ] FBReader — sem `~/.config` (usa `~/.local/share/FBReader`)
- [ ] texlive/pandoc — configurações espalhadas em `/etc/texmf` e `~/.local/share`; não há `~/.config`
- [ ] QtConsole/Jupyter — usa `~/.jupyter`

### Editores, IDEs e Ferramentas de Dev
- [x] Neovim — `~/.config/nvim`
- [ ] VS Code (Code - OSS) — `~/.config/Code - OSS`
- [ ] Obsidian — `~/.config/obsidian`
- [ ] Unity Hub — `~/.config/unityhub`
- [ ] Godot — `~/.config/godot`
- [ ] Android tools/Studio — `~/.config/Android Open Source Project`
- [ ] Blender — `~/.config/blender`
- [ ] Godot & engines 3D extras — idem acima
- [ ] Elephant suite (clipboard/calc/apps) — `~/.config/elephant*`
- [x] kmonad — `~/.config/kmonad`

### Audio & Música
- [ ] Audacious — `~/.config/audacious`
- [ ] Audacity — `~/.config/audacity`
- [ ] Sonic Visualiser — `~/.config/sonic-visualiser`
- [ ] Timidity++ — sem `~/.config` (usa `/etc/timidity++` + home oculta)
- [ ] Fluidsynth — sem `~/.config`
- [ ] Helvum — sem `~/.config`
- [ ] qpwgraph — `~/.config/qpwgraph`
- [ ] pavucontrol — `~/.config/pavucontrol.ini`
- [ ] projectM — `~/.config/projectM`

### Vídeo, Streaming e VR
- [ ] mpv — `~/.config/mpv`
- [ ] VLC — `~/.config/vlc`
- [ ] Shotcut — `~/.config/Meltytech`
- [ ] OpenShot — sem `~/.config` (usa `~/.local/share/openshot.org`)
- [ ] Jellyfin Server — configs em `/var/lib/jellyfin` (não sob `~/.config`)
- [ ] minidlna — `/etc/minidlna.conf`
- [ ] wivrn — `~/.config/wivrn`
- [x] ALVR — `~/.config/alvr`
- [ ] Flameshot — `~/.config/flameshot`
- [ ] Swappy — `~/.config/swappy`

### Imagem, Design e 3D
- [ ] Gwenview — `~/.config/gwenviewrc`
- [ ] feh — sem `~/.config` (usa `~/.config/feh` apenas se criado)
- [ ] sxiv — `~/.config/sxiv`
- [ ] GIMP — `~/.config/GIMP`
- [ ] Krita — `~/.config/kritarc` e `kritadisplayrc`
- [ ] Inkscape — `~/.config/inkscape`
- [ ] ImageMagick — `~/.config/ImageMagick`
- [ ] Blender — `~/.config/blender`
- [ ] Godot — `~/.config/godot`
- [ ] gpick — `~/.config/gpick`
- [ ] PureRef — `~/.config/PureRef`
- [ ] Filelight — `~/.config/filelightrc`

### Leitura & PDF/Ebooks
- [ ] Okular — `~/.config/okularrc`
- [ ] Zathura — sem `~/.config` (usa `~/.config/zathura` somente se criado; hoje só defaults)
- [ ] FBReader — (vide seção de produtividade)
- [ ] Calibre — `~/.config/calibre`
- [ ] Sweethome3D — `~/.config/Sweethome3d`
- [ ] SumatraPDF — `~/.config/SumatraPDF`

### Gerenciadores de Arquivos (GUI/TUI)
- [ ] Thunar — `~/.config/Thunar`
- [ ] Nemo — `~/.config/nemo`
- [ ] Nautilus — `~/.config/nautilus`
- [ ] PCManFM — `~/.config/pcmanfm`
- [ ] Double Commander — `~/.config/doublecmd`
- [x] Ranger — `~/.config/ranger`
- [ ] Yazi — `~/.config/yazi`
- [ ] Midnight Commander — `~/.config/mc`
- [ ] Filelight — `~/.config/filelightrc`

### Rede, Downloads e DevOps
- [ ] Docker/Buildx/Compose — `~/.config/docker`
- [ ] qBittorrent — `~/.config/qBittorrent`
- [ ] NetworkManager/iwd/dnsmasq — armazenam configs em `/etc`
- [ ] Jellyfin/minidlna — ver notas em vídeos/streaming
- [ ] act, direnv, uv — sem `~/.config`

### Jogos, VR e Ferramentas 3D
- [ ] Steam — `~/.steam`/`~/.local/share/Steam` (fora de `~/.config`)
- [ ] Lutris — `~/.config/lutris`
- [ ] Unity Hub — `~/.config/unityhub`
- [ ] Godot — `~/.config/godot`
- [ ] VirtualBox — `~/.config/VirtualBox`
- [x] ALVR — `~/.config/alvr`
- [ ] Wivrn Dashboard — `~/.config/wivrn`

### Sistema & Utilidades
- [ ] CopyQ — `~/.config/copyq`
- [ ] Elephant (calc/clipboard/apps) — `~/.config/elephant*`
- [ ] Papirus / temas — `~/.config` (diversos arquivos GTK)
- [ ] Nerd Fonts — sem configs (apenas fontes em `/usr/share/fonts`)
- [ ] expac/progress/lshw/lsof/dmidecode — ferramentas sem diretórios em `~/.config`

## Vídeos, imagens e PDFs (resumo rápido)
- **Players de vídeo:** mpv, VLC, Shotcut, OpenShot, Jellyfin Web, Wivrn Dashboard (ver status acima).
- **Visualizadores de imagem:** Gwenview, feh, sxiv, Imagemagick display.
- **Leitores de PDF/Ebook:** Okular, Zathura (+ mupdf), FBReader, Calibre.

## Como atualizar este inventário
1. Gere a lista atual de pacotes explícitos: `pacman -Qe > pkg-list.txt`.
2. Compare com este README e atualize as seções afetadas (adição/remoção de aplicativos finais).
3. Registre via chezmoi: `chezmoi git add README.md && chezmoi git commit -m "docs: atualiza README" && chezmoi git push`.

> Dica: mantenha `pkg-list.txt` versionado ou anexado como referência para diffs futuros.
