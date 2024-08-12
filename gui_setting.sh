# Copied and modified from chno-odoo
#!/bin/bash

# This script will be used to set the default GUI settings of the operating system.

# Download the raw image files to the user's home directory
curl -L https://raw.githubusercontent.com/chno-odoo/Odoo-Buffalo-Linux/5b5cb493fb4ab58e40ace10d1e88b0f57d2f27d7/images/odoo_logo.png -o $HOME/odoo_logo.png
curl -L https://raw.githubusercontent.com/chno-odoo/Odoo-Buffalo-Linux/5b5cb493fb4ab58e40ace10d1e88b0f57d2f27d7/images/Ologo1.png -o $HOME/OLogo1.png
curl -L https://raw.githubusercontent.com/chno-odoo/Odoo-Buffalo-Linux/5b5cb493fb4ab58e40ace10d1e88b0f57d2f27d7/images/odoo_logo_inverted.png -o $HOME/odoo_logo_inverted.png

# NOTE: Ensure this script is executed as the target user for the following commands to apply to the correct graphical session.

# Set the downloaded image as the desktop background. 
gsettings set org.gnome.desktop.background picture-uri 'file://'$HOME'/odoo_logo.png'

# Set the background picture options.
gsettings set org.gnome.desktop.background picture-options 'centered'

# Set the background primary color.
gsettings set org.gnome.desktop.background primary-color '#FFFFFF'

# Set the Mouse Pointer.
gsettings set org.gnome.desktop.interface cursor-theme 'DMZ-White'

# Set application theme.
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'

# Set the icons theme.
gsettings set org.gnome.desktop.interface icon-theme 'Yaru'

# Set the desktop theme (GNOME Shell).
gsettings set org.gnome.shell.extensions.user-theme name 'Yaru-dark'

# Pin the wanted applications to the favorites in the GNOME Shell.
gsettings set org.gnome.shell favorite-apps "['org.gnome.Terminal.desktop', 'google-chrome.desktop', 'discord.desktop', 'code.desktop', 'libreoffice-calc.desktop', 'libreoffice-writer.desktop', 'keepassx.desktop', 'spotify.desktop', 'org.gnome.Screenshot.desktop', 'org.gnome.Settings.desktop']"
