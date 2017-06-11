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
        package = glob.glob('cower-git'+'*.pkg.tar.xz')[0]
        tools.makepkg(package)
    with tools.cd('pacaur'):
        package = glob.glob('pacaur'+'*.pkg.tar.xz')[0]
        tools.makepkg(package)

tools.bash_cmd(['mkdir', '-p', '.config/pacaur'])
tools.bash_cmd(['echo', '"displaybuildfiles=none"', '>' ,'.config/pacaur/config'])
