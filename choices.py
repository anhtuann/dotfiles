INSTALL_ENV = 'virtualbox'
#Real install would be 'machine'

MINIMAL = ['pacaur.py',
           'cli_tools.py',
           'virtualbox.py',
           'xserver.py',
           'i3wm.py',
           'fs_management.py',
           'fonts.py',
           'sound.py',
           'browser.py',
           'code_env.py',
           'multimedia.py',
           'web_tools.py',
           'vim.py',
           'shell.py']

HARDWARE = ['bumblebee.py',
            'input.py'] #,
            #'power.py']

STEPS = list()
STEPS.extend(MINIMAL)
STEPS.extend(HARDWARE)
