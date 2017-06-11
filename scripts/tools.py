import subprocess
import contextlib
import os
import glob

def bash_cmd(args, shell=False):
    print(' '.join(args))
    if not shell:
        subprocess.run(args, stdout=subprocess.PIPE)
    else:
        arguments = ' '.join(args)
        subprocess.run(arguments, stdout=subprocess.PIPE, shell=True)

def pacman(packages, makepkg=False, noconfirm=True):
    command = ['sudo', 'pacman']
    if not makepkg:
        command.append('-S')
    else:
        command.append('-U')
    if noconfirm:
        command.append('--noconfirm')
    for package in packages:
        command.append(package)
    bash_cmd(args = command, stdout=subprocess.PIPE)

@contextlib.contextmanager
def cd(newdir):
    prevdir = os.getcwd()
    os.chdir(os.path.expanduser(newdir))
    try:
        yield
    finally:
        os.chdir(prevdir)

def git_clone(repository):
    command = ['git', 'clone']
    command.append(repository)
    print(' '.join(command))
    subprocess.run(args = command, stdout=subprocess.PIPE)

def makepkg(package):
    bash_cmd(['makepkg', '-s'])
    pacman(glob.glob(package), makepkg=True)

def link_conf(source, link):
    bash_cmd(['ln','-s', source, link], shell=True)
