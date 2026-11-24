# Dotfiles

This repository contains my personal Linux configuration files, desktop settings, and helper scripts. Dotfiles are application and system configuration files—often hidden in the home directory because their names begin with a period. Keeping selected settings in Git makes it easier to track changes and reuse my preferred setup.

The repository includes configurations for several alternative window managers and terminal emulators. They are personal configuration examples, not a complete Linux installation: applications, fonts, utilities, and system services referenced by the files need to be installed separately. Review machine-specific paths and commands before using them on another system.

## Repository contents

### Home-directory files

- `.bash_profile` loads `.bashrc` when it exists, then starts X with `startx`.
- `.xinitrc` is an X session startup file for dwm. It updates the root-window status with the date, uptime, and dwm version, runs `/home/kiri/autostart.sh`, and starts dwm. That autostart script is not included here.

### `.config/`

These are application configurations intended for the corresponding directories under `~/.config/`.

| Directory or file | Purpose |
| --- | --- |
| `fish/` | Fish shell configuration. |
| `alacritty/`, `ghostty/`, `kitty/` | Settings for three terminal emulators; `kitty/` also contains a current theme file and a backup config. |
| `i3/` | i3 window-manager settings, i3status settings, and helper scripts for power actions and display toggling. |
| `openbox/` | Openbox session settings and a monitor-toggle helper. |
| `qtile/` | Qtile window-manager configuration, startup and volume-icon scripts, and a Rofi power menu. |
| `polybar/` | Polybar status-bar configuration and a launch script. |
| `rofi/` | Rofi menu configuration. |
| `picom/` | Picom compositor settings, including effects such as shadows, transparency, and blur. |
| `mpv/` | mpv media-player settings. |
| `redshift.conf` | Manual location settings for Redshift's color-temperature adjustment. |
| `xdg-desktop-portal/` | Preferred desktop portal backend setting. |

The window-manager directories are alternatives; their settings and startup scripts are not intended to run together as one session. Some configs refer to external programs, system paths, or hardware-specific details, so adapt those references to the target machine.

### Other files

- `dwm_config_file/config.h` contains dwm appearance, layouts, key bindings, and application rules.
- `st_config_file/config.h` contains settings for the st terminal, including its font, colors, and terminal behavior.
- `dwmscripts/toggle-stalonetray.sh` toggles the stalonetray process for the dwm setup.
- `gamingmode.sh` and `normalmode.sh` switch fan profiles and set a CPU temperature limit using OMENCore and `ryzenadj`.
- `turnoffscreen.sh` turns off the display and stops Alacritty.
- `polkitxdg.sh` starts desktop portal and policy-kit processes and cleans them up when stopped.
- `backup_dotfiles.sh` copies selected configuration directories from the home directory into this repository; see below.
- `LICENSE` contains the repository's MIT License.

## How do I back up my dotfiles?

`backup_dotfiles.sh` copies the selected directories `mpv`, `fish`, `qtile`, `alacritty`, `ghostty`, `kitty`, `picom`, `i3`, `polybar`, `xdg-desktop-portal`, `rofi`, and `openbox` from `~/.config/` into the repository's `.config/` directory. Run it from the repository root (the script uses a relative `.config` destination):

```bash
cd ~/Dotfiles
bash backup_dotfiles.sh
```

The script also removes Qtile's `backup` and `__pycache__` directories and Fish's generated `fish_variables` file from `~/Dotfiles/.config`. Review the resulting changes before saving them: the script copies files but does not stage, commit, or push them to Git. I use the source-control interface in Code - OSS or Visual Studio Code to review, commit, and push updates to the remote repository.

The script only covers the listed `.config` directories. Other files in this repository, such as `.bash_profile`, `.xinitrc`, and the custom dwm/st configuration files, are not copied by it and must be updated separately when they change.
