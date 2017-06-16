from scripts import tools

#INSTALL
packages = ['xorg-server',
            'xorg-apps',
            'xorg-xinit',
            'arandr',
            'xbanish']
tools.pacaur(packages)

#CONFIGURATION
tools.link_conf('~/Projects/dotfiles/confs/xinitrc_conf', '~/.xinitrc')
tools.link_conf('~/Projects/dotfiles/confs/virtualoutput_conf', '/etc/X11/xorg.conf.d/60-virtualoutput.conf', sudo=True)

