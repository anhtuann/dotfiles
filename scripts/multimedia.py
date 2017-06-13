from scripts import tools

#INSTALL
packages = ['mpv',
            'handbrake',
            'calibre']
tools.pacaur(packages)

#CONFIGURATION
tools.link_conf('~/Projects/dotfiles/confs/mpv.conf', '~/.config/mpv/mpv.conf')
