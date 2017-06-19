from scripts import tools

#INSTALL
packages = ['libmtp',
            'android-file-transfer',
            'udisks2',
            'udiskie',
            'ntfs-3g',
            'dosfstools',
            'hfsprogs',
            'exfat-utils',
            'gparted']
tools.pacaur(packages)
