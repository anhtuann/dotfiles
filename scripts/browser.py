from scripts import tools

#INSTALL
packages = ['firefox',
            'gstreamer',
            'gst-libav', 
            'gst-plugins-good']
tools.pacaur(packages)

#CONFIGURATION
tools.link_conf('~/Projects/dotfiles/confs/vimperatorrc_conf', '~/.vimperatorrc')
