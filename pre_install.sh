#Option configuration

PS3='Type index of machine you want to install : '
options=("dreamland" "sandman")
select opt in "${options[@]}";
do
    if [[ -n $opt ]]; then
        machine=$opt
        break
    else
        echo "invalid option"
    fi
done

PS3='Is it a test install or the real deal ? : '
options=("test" "real")
select opt in "${options[@]}";
do
    if [[ -n $opt ]]; then
        environment=$opt
        break
    else
        echo "invalid option"
    fi
done

printf "You chose to make a %s install for the %s machine" "$environment" "$machine"

#Tools needed
sudo pacman -S --noconfirm git wget
mkdir Projects
cd Projects
git clone https://github.com/anhtuann/dotfiles.git


#Update and optimize mirrorlist for pacman
#Code taken from a linode stackscript and added sudo to it
#https://www.linode.com/stackscripts/view/12580
sudo pacman -Sy --noconfirm reflector
sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.old
sudo wget https://www.archlinux.org/mirrorlist/all/ -O /etc/pacman.d/mirrorlist
sudo reflector --protocol http --sort rate --fastest 6 --threads 10 --save /etc/pacman.d/mirrorlist

#Update system
sudo pacman -Syu --noconfirm
