import tools

packages = ['expac', 'yajl']
tools.pacman(packages, noconfirm=False)

tmp_folder = '/tmp/aur'
tools.bash_cmd(['mkdir', tmp_folder])

with tools.cd(tmp_folder):
    tools.git_clone('https://aur.archlinux.org/cower-git.git')
    tools.git_clone('https://aur.archlinux.org/pacaur.git')
    with tools.cd('cower-git'):
        package = 'cower-git'+'*.pkg.tar.xz'
        tools.makepkg(package)
    with tools.cd('pacaur'):
        package = 'pacaur'+'*.pkg.tar.xz'
        tools.makepkg(package)

tools.bash_cmd(['mkdir', '-p', '$HOME/.config/pacaur'])
tools.bash_cmd(['echo', '"displaybuildfiles=none"', '>' ,'~/.config/pacaur/config'])
