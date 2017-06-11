import tools
import glob

#INSTALLATION
packages = ['expac', 'yajl']
tools.pacman(packages)

tmp_folder = '/tmp/aur'
tools.mkdir(tmp_folder)

with tools.cd(tmp_folder):
    tools.git_clone('https://aur.archlinux.org/cower-git.git')
    tools.git_clone('https://aur.archlinux.org/pacaur.git')
    with tools.cd('cower-git'):
        tools.makepkg('*.pkg.tar.xz')
    with tools.cd('pacaur'):
        tools.makepkg('*.pkg.tar.xz')

tools.mkdir('.config/pacaur')

#CONFIGURATION
tools.link_conf('~/Projects/dotfiles/confs/pacaur_conf','~/.config/pacaur/config')
