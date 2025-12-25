# Arch ChezMoi Dotfiles

> Estado capturado com `pacman -Qe` em 25 de dezembro de 2025.

## Stack Base
- **Distro:** [Arch Linux](https://archlinux.org/)
- **Window managers/compositores:** [Hyprland](https://hyprland.org/) (Wayland) + [Qtile](https://qtile.org/) (X11)
- **Terminal padrão:** [foot](https://codeberg.org/dnkl/foot) com alternativas (Alacritty, Contour, WezTerm, Terminator)
- **Shell:** `zsh` + [oh-my-zsh](https://ohmyz.sh/) + `p10k`
- **Launcher/menus:** rofi, walker, wofi, fuzzel, hyprlauncher
- **Editor principal:** [Neovim](https://neovim.io/) com LazyVim; VS Code e Obsidian como apoio
- **Status bar e indicadores:** Waybar, dunst, hyprpaper, cliphist/copyq
- **Gerenciadores de arquivos:** Thunar, Nemo, Nautilus, PCManFM, Double Commander, Ranger, Yazi

## Aplicativos por categoria

### Navegadores
- Firefox, Google Chrome

### Audio & Música
- Audacious (player), Audacity (edição), Sonic Visualiser, Helvum/qpwgraph para PipeWire

### Vídeo / Streaming / Edição
- mpv, VLC, Shotcut, OpenShot, Jellyfin Server/Web para streaming local, Wivrn (VR streaming)

### Imagem & Design
- Viewers: Gwenview, feh, sxiv
- Edição/Criação: GIMP, Krita, Inkscape, Imagemagick, Blender, Godot, Filelight (uso de disco visual)

### Documentos / Leitura
- PDF/ebooks: Okular, Zathura (+ zathura-pdf-mupdf), FBReader, Calibre
- Escritório: LibreOffice (still + pt-BR), Obsidian, Pandoc, LaTeX (coleção completa texlive)

### Desenvolvimento
- Toolchains: base-devel, rustup, JDK 17, python (pyenv, pipenv, pip), CUDA (toolkit + python-pytorch-cuda), Unity Hub, Godot, Android tools, cmake, git/git-lfs, act, docker stack (docker, buildx, compose), chezmoi
- Linters/formatters: black, ruff, ktlint, efm-langserver, python-libcst
- Terminais multiplexadores: tmux, zellij

### Redes & DevOps
- docker/docker-compose, jellyfin/minidlna, qbittorrent, networkmanager & applet, iwd, dnsmasq, strongswan, wireshark-qt, nmap, vnstat, cpupower, stress-ng

### Gráficos / VR / Jogos
- Steam, Lutris, Hyprland extras (hyprpaper, hyprlauncher, hyprpicker), ALVR stack (wivrn, jellyfin for VR?), VirtualBox, Unity Hub, Openshot/Shotcut, OBS (via flatpak?) *[instalados via pacman list]*

### Ferramentas de Sistema
- Monitoramento: btop? (não na lista) -> iotop, nethogs, progress, expac, lsof
- Clipboard/notes: cliphist, copyq, elephant suite
- PrintScreen: grimblast, flameshot, swappy
- Fonts: Nerd Fonts completos (ttf-*, otf-*)

## Como atualizar este inventário
1. Execute `pacman -Qe > pkg-list.txt` para capturar pacotes instalados explicitamente.
2. Atualize as listas acima conforme instalar/remover aplicativos finais.
3. Commits e pushes devem ser feitos pelo próprio chezmoi: `chezmoi git add README.md && chezmoi git commit -m "docs: atualiza README" && chezmoi git push`.

