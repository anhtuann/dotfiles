import subprocess
import contextlib
import os

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
    subprocess.run(args = command, stdout=subprocess.PIPE)

def bash_cmd(args):
    subprocess.run(args, stdout=subprocess.PIPE)

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
    subprocess.run(args = command, stdout=subprocess.PIPE)

def makepkg(package):
    bash_cmd(['makepkg', '-s'])
    pacman([package], makepkg=True)

