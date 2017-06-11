import choices
import tools

#INSTALLATION
if choices.INSTALL_ENV == 'virtualbox':
    tools.pacaur(['virtualbox-guest-modules-arch'])
else:
    tools.pacaur(['virtualbox', 'virtualbox-host-dkms', 'linux-headers'])
    command = "sudo dkms install vboxhost/$(pacman -Q virtualbox|awk '{print $2}'|sed 's/\-.\+//') -k $(uname -rm|sed 's/\ /\//')"
    tools.bash_cmd(command.split(' '), shell=True)
    command = "sudo gpasswd -a $USER vboxusers"
    tools.bash_cmd(command.split(' '), shell=True)
    tools.pacaur(['virtualbox-guest-iso',
                    'net-tools',
                    'virtualbox-ext-oracle',
                    'qt4'])
    
#CONFIGURATION
if choices.INSTALL_ENV != 'virtualbox':
    tools.link_conf('~/Projects/dotfiles/confs/virtualbox_conf', '/etc/modules-load.d/virtualbox.conf', sudo=True)
