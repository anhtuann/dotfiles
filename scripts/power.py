from scripts import tools
import choices

#INSTALL
if choices.INSTALL_ENV == 'machine':
    packages = ['tlp']

#CONFIGURATION
if choices.INSTALL_ENV == 'machine':
    tools.bash_cmd(['sudo', 'systemctl', 'enable', 'tlp.service'])
    tools.bash_cmd(['sudo', 'systemctl', 'enable', 'tlp-sleep.service'])
    tools.bash_cmd(['sudo', 'systemctl', 'disable', 'systemd-rfkill.service'])
    tools.link_conf('~/Projects/dotfiles/confs/tlp_conf', '/etc/default/tlp', sudo=True)
