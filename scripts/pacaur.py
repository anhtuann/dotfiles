import tools
import glob

packages = ['expac', 'yajl']
tools.pacman(packages)

tmp_folder = '/tmp/aur'
tools.bash_cmd(['mkdir', tmp_folder])

with tools.cd(tmp_folder):
    tools.git_clone('https://aur.archlinux.org/cower-git.git')
    tools.git_clone('https://aur.archlinux.org/pacaur.git')
    with tools.cd('cower-git'):
        tools.makepkg('*.pkg.tar.xz')
    with tools.cd('pacaur'):
        tools.makepkg('*.pkg.tar.xz')

tools.bash_cmd(['mkdir', '-p', '.config/pacaur'])
tools.bash_cmd(['echo', '"displaybuildfiles=none"', '>' ,'.config/pacaur/config'])
