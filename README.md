## Personal adjustments for Debian 12 + GNOME

### Add missing weather location to GNOME
[add-location-to-gnome-weather.sh](https://gitlab.com/julianfairfax/scripts/-/raw/main/add-location-to-gnome-weather.sh)

### Cursor theme
Download: [Capitaine Cursors](https://www.gnome-look.org/p/1148692)  
Extract them and place in:
- **User**: `/home/user/.icons`
- **Root**: `/usr/share/icons`

It'll be available on Gnome Tweaks

### Disable shutdown confirmation
```
gsettings set org.gnome.SessionManager logout-prompt false
```

### Enable touch-to-click on login screen
Edit the file: `/usr/share/X11/xorg.conf.d/40-libinput.conf`  
In the Identifier `libinput touchpad catchall` add the line:
```
Option "Tapping" "on"
```

```bash
Section "InputClass"
    Identifier "libinput touchpad catchall"
    MatchIsTouchpad "on"
    MatchDevicePath "/dev/input/event*"
    Driver "libinput"
    Option "Tapping" "on" # Here
EndSection
```

### Extensions
- [AATWS (Advanced Alt-Tab Window Switcher)](https://extensions.gnome.org/extension/4412/advanced-alttab-window-switcher/)
- [Alt+Tab Scroll Workaround](https://extensions.gnome.org/extension/5282/alttab-scroll-workaround/)
- [Auto Move Windows](https://extensions.gnome.org/extension/16/auto-move-windows/) (pre-built)
- [Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
- [Desktop Icons NG (DING)](https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/)
- [Impatience](https://extensions.gnome.org/extension/277/impatience/)
- [Panel Date Format](https://extensions.gnome.org/extension/1462/panel-date-format/)

### General
- Icon theme: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- Screenshot tool: [Flameshot](https://flameshot.org/)
- Smart cd command: [Zoxide](https://github.com/ajeetdsouza/zoxide)
- Storage manager `ncdu`: `sudo apt install ncdu`
