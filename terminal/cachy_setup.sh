#!/bin/bash

# 1. Actualización e instalación del asistente AUR (Paru ya viene en CachyOS)
echo "🚀 Sincronizando repositorios optimizados de CachyOS..."
sudo pacman -Syu --noconfirm

# 2. El CORE de tu Hyprland (Pywal-centric)
echo "🎨 Instalando entorno visual con soporte Pywal..."
sudo pacman -S --needed --noconfirm \
  hyprland hyprpaper hyprlock hypridle \
  waybar swaync swww \
  kitty alacritty yazi starship stow btop fastfetch \
  rofi-wayland wlogout nwg-look \
  python-pywal \
  grim slurp swappy wl-clipboard pavucontrol brightnessctl

# 3. Herramientas de Sistema y Archivos
echo "🛠️ Instalando utilidades de sistema..."
sudo pacman -S --needed --noconfirm \
  thunar file-roller 7zip rsync jq wget micro \
  bluez-utils blueman networkmanager acpi tlp \
  gvfs gvfs-mtp ntfs-3g flatpak

# 4. Gaming y Apps (Setup para Borderlands e Indies)
echo "🎮 Instalando soporte para Gaming y Multimedia..."
sudo pacman -S --needed --noconfirm \
  steam lutris wine-staging winetricks \
  obs-studio vlc yt-dlp ani-cli \
  visual-studio-code-bin spotify spicetify-cli

# 5. Fuentes Nerd (Para que tus iconos no se rompan)
echo "🔤 Instalando fuentes..."
sudo pacman -S --needed --noconfirm \
  ttf-jetbrains-mono-nerd \
  ttf-cascadia-code-nerd \
  ttf-hack-nerd \
  noto-fonts-emoji

# 6. AUR - Detalles finales
echo "📦 Instalando paquetes específicos de AUR..."
paru -S --noconfirm \
  swaylock-effects-git \
  cava

echo "✅ Script finalizado."
echo "💡 Recuerda ejecutar 'wal -i /ruta/a/tu/wallpaper' tras el primer inicio."
