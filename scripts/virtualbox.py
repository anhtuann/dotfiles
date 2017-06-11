import choices
import tools

#INSTALLATION
if choices.INSTALL_ENV == 'virtualbox':
    packages = ['virtualbox-guest-modules-arch']
    tools.pacaur(packages)
else:
    packages = ['virtualbox', 
                'virtualbox-host-dkms', 
                'linux-headers',
                'virtualbox-guest-iso',
                'net-tools',
                'virtualbox-ext-oracle',
                'qt4']
    tools.pacaur(packages)
    command = "sudo dkms install vboxhost/$(pacman -Q virtualbox|awk '{print $2}'|sed 's/\-.\+//') -k $(uname -rm|sed 's/\ /\//')"
    tools.bash_cmd(command.split(' '), shell=True)
    command = "sudo gpasswd -a $USER vboxusers"
    tools.bash_cmd(command.split(' '), shell=True)
    
#CONFIGURATION
if choices.INSTALL_ENV == 'virtualbox':
    command = 'sudo systemctl enable vboxservice.service'
    tools.bash_cmd(command.split(' '))
else:
    tools.link_conf('~/Projects/dotfiles/confs/virtualbox_conf', '/etc/modules-load.d/virtualbox.conf', sudo=True)
