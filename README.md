# Arch ChezMoi Dotfiles

> Estado capturado com `pacman -Qe` em 25 de dezembro de 2025.

## Stack Base
- **Distro:** [Arch Linux](https://archlinux.org/)
- **WM/Compositor:** [Hyprland](https://hyprland.org/) (Wayland) + [Qtile](https://qtile.org/) (X11)
- **Terminal padrão:** [foot](https://codeberg.org/dnkl/foot)
- **Shell:** `zsh` + [oh-my-zsh](https://ohmyz.sh/) + `powerlevel10k`
- **Editor principal:** [Neovim](https://neovim.io/) (LazyVim) com apoio de VS Code e Obsidian
- **Status/desktop services:** Waybar, dunst, hyprpaper, cliphist, copyq

## Aplicativos destacados

### Terminais e Multiplexadores
- Emuladores: foot, Alacritty, Contour, WezTerm, Terminator
- Multiplexadores: tmux, zellij

### Launchers e Menus
- rofi, walker, wofi, fuzzel, hyprlauncher, waybar modules

### Navegadores e Web
- Firefox, Google Chrome
- Utilidades web: qutebrowser? (não), Jellyfin Web frontend

### Produtividade, Notas e Escritório
- LibreOffice Still (pt-BR), Obsidian, Calibre, FBReader
- Ferramentas LaTeX full (texlive-*), Pandoc CLI
- Qtconsole, Jupyter helpers (python-qtconsole)

### Editores, IDEs e Ferramentas de Dev
- Neovim, VS Code (`code`), Unity Hub, Godot, Android Tools, JetBrains configs (ideavimrc)
- Toolchains: base-devel, rustup, JDK 17, cmake, python (pyenv, pipenv, pip, black, ruff), CUDA toolkit + `python-pytorch-cuda`/`torchvision`
- Git tooling: git, git-lfs, act, lazygit, chezmoi

### Audio & Música
- Players: Audacious, Timidity++, fluidsynth, projectm visualizer
- Edição e captura: Audacity, Sonic Visualiser
- Sistemas: pipewire (alsa/jack/pulse), helvum, qpwgraph, pavucontrol
- Instrumentos/auxiliares: soundfont-fluid

### Vídeo, Streaming e VR
- Players: mpv, VLC
- Edição: Shotcut, OpenShot, Kdenlive? (não), Blender video sequence, OBS (instalado via flatpak se necessário)
- Streaming/local media: Jellyfin Server/Web, minidlna
- VR streaming: wivrn-server/dashboard, ALVR configs, WIM (?).
- Grabbers: grimblast, flameshot, swappy

### Imagem, Design e 3D
- Viewers: Gwenview, feh, sxiv
- Edição/Criação: GIMP, Krita, Inkscape, Imagemagick, Blender, Godot, gpick (color picker), Filelight para visualização de disco

### Leitura & PDF/Ebooks
- PDF: Okular, Zathura + `zathura-pdf-mupdf`, fbreader
- Ebooks/Gerenciamento: Calibre, img2pdf, sweethome3d (plantas 3D)

### Gerenciadores de arquivos e TUI
- GUI: Thunar, Nemo, Nautilus, PCManFM, Double Commander (Qt5), Filelight
- TUI/CLI: Ranger, Yazi, mc (Midnight Commander), yazi, rsync/expac utilities

### Desenvolvimento Web/Containers/DevOps
- Docker stack: docker, docker-buildx, docker-compose, nvidia-container-toolkit
- Kubernetes? (não)
- CLI cloud/devops: act, direnv, uv, qbittorrent (download management)
- Versionamento infra: chezmoi, git, git-lfs

### Rede e Diagnóstico
- networkmanager + applet, iwd, dnsmasq, strongswan, vnstat, nethogs, iotop, traceroute, nmap, wireshark-qt, cpupower, stress-ng

### Jogos, VR e Multimídia Interativa
- Steam, Lutris, openshot? (ed), Unity Hub, Godot, VirtualBox, jellyfin VR (wivrn)
- OpenXR/VR: wivrn-server/dashboard, Hyprland family (hyprpaper, hyprpicker)

### Virtualização & Emulação
- VirtualBox, qemu? (não), wine/proton? (via Steam), android-tools (adb/fastboot)

### Sistema & Utilidades
- Monitoramento/diagnóstico: expac, progress, lshw, lsof, dmidecode, stress-ng
- Clipboard: cliphist, copyq, elephant suite (calc, clipboard, desktop apps)
- Fonts e theming: Papirus icon theme, nerd fonts (otf/ttf family), xcursor-arch
- Impressão/scan? (na lista? none)

## Vídeos, imagens e PDFs (resumo rápido)
- **Players de vídeo:** mpv, VLC, Shotcut, OpenShot, Jellyfin Web, Wivrn Dashboard
- **Visualizadores de imagem:** Gwenview, feh, sxiv, Imagemagick display
- **Leitores de PDF/Ebook:** Okular, Zathura (+ mupdf), FBReader, Calibre

## Como atualizar este inventário
1. Gere a lista atual de pacotes explícitos: `pacman -Qe > pkg-list.txt`.
2. Compare com este README e atualize as seções afetadas (adição/remoção de aplicativos finais).
3. Registre via chezmoi: `chezmoi git add README.md && chezmoi git commit -m "docs: atualiza README" && chezmoi git push`.

> Dica: mantenha `pkg-list.txt` versionado ou anexado como referência para diffs futuros.
