from scripts import tools
import choices

#INSTALL
if choices.INSTALL_ENV != 'virtualbox':
    packages = ['bumblebee',
                'mesa',
                'xf86-video-intel',
                'nvidia',
                'bbswitch-dkms']
    tools.pacaur(packages)

#CONFIGURATION
if choices.INSTALL_ENV != 'virtualbox':
    command = 'sudo gpasswd -a $USER bumblebee'
    tools.bash_cmd(command, shell=True)
    command = 'sudo systemctl enable bumblebeed.service'    
    tools.bash_cmd(command, shell=True)
    tools.link_conf('~/Projects/dotfiles/confs/bumblebee_conf', '/etc/bumblebee/bumblebee.conf', sudo=True)
    tools.link_conf('~/Projects/dotfiles/confs/bumblebee_nvidia_conf', '/etc/bumblebee/xorg.conf.nvidia', sudo=True)
