from scripts import tools

#INSTALL
packages = ['python',
            'python-virtualenv',
            'python-virtualenvwrapper',
            'cmake', #installed to build YouCompleteMe vim Plugin
            'boost'] #same as cmake for YouCompleteMe
tools.pacaur(packages)
