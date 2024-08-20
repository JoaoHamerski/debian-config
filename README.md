## Personal adjustments for Debian 12 + GNOME

- [Cursor theme](#cursor-theme)
- [Desktop entries on Gnome Files](#desktop-entries)
- [Disable shutdown confirmation](#shutdown-confirmation)
- [Extensions](#extensions)
- [General](#general)
- [SSH config file example](#ssh-config)
- [Zsh and terminal](#terminal)

### Cursor theme<a name="cursor-theme"></a>
Download: [Capitaine Cursors](https://www.gnome-look.org/p/1148692)  
Extract it and place in:
- **User**: `/home/user/.icons`
- **Root**: `/usr/share/icons`

It'll be available on Gnome Tweaks

### Desktop entries on Gnome Files:<a name="desktop-entries"></a>
##### Remove desktop entries:
- Comment the entires to be removed in `~/.config/user-dirs.dirs`
- Add `enabled=false` in `~/.config/user-dirs.conf` (prevent recreating folders)
- Reboot

##### Add Desktop entry to sidebar:
```bash
gsettings set org.gnome.desktop.background show-desktop-icons true
```

### Disable shutdown confirmation<a name="shutdown-confirmation"></a>
```
gsettings set org.gnome.SessionManager logout-prompt false
```

### Extensions<a name="extensions"></a>
- [AATWS (Advanced Alt-Tab Window Switcher)](https://extensions.gnome.org/extension/4412/advanced-alttab-window-switcher/)
- [Alt+Tab Scroll Workaround](https://extensions.gnome.org/extension/5282/alttab-scroll-workaround/)
- [Auto Move Windows](https://extensions.gnome.org/extension/16/auto-move-windows/) (pre-built)
- [Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
- [Desktop Icons NG (DING)](https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/)
- [Just Perfection](https://extensions.gnome.org/extension/3843/just-perfection/)
- [Impatience](https://extensions.gnome.org/extension/277/impatience/)
- [Panel Date Format](https://extensions.gnome.org/extension/1462/panel-date-format/)
- [Tray Icons: Reloaded](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/)

### General<a name="general"></a>
- Add missing weather location to GNOME: [script.sh](https://gitlab.com/julianfairfax/scripts/-/raw/main/add-location-to-gnome-weather.sh)
- [Flameshot](https://flameshot.org/)
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- Storage manager `ncdu`: `sudo apt install ncdu`
- [Version Manager asdf](https://asdf-vm.com/)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)

### SSH config file example<a name="ssh-config"></a>
```bash
/home/user/.ssh/config
```
```bash
Host hostname
        HostName 192.168.0.1
        User username
        Port 2222
        IdentityFile /path/to/identity/file
```
```bash
chmod 400 /path/to/identity/file  
```
Then `ssh hostname` to connect

### Zsh and terminal<a name="terminal"></a>
- Dracula Theme: https://draculatheme.com/gnome-terminal
- Hack font: https://github.com/source-foundry/Hack/releases
- Install ZSH: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
- Install Zinit: https://github.com/zdharma-continuum/zinit?tab=readme-ov-file#install
