from scripts import tools
import choices

#INSTALL
if choices.INSTALL_ENV == 'machine':
    packages = ['xf86-input-libinput']
    tools.pacaur(packages)

#CONFIGURATION
if choices.INSTALL_ENV == 'machine':
    tools.link_conf('~/Projects/dotfiles/confs/libinput_conf', '/etc/X11/xorg.conf.d/50-touchpad.conf', sudo=True)
