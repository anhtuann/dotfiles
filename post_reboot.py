from scripts import tools

tools.bash_cmd(['vim', '+PluginInstall', '+qall'])

#may need to execute those two commands after reboot because of the change of shell
#another solution would be to use Popen which has an executable argument
tools.bash_cmd('source ~/.zshrc', shell=True)
tools.bash_cmd('base16_3024', shell=True)
