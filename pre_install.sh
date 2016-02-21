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
    if [ -n $opt ]; then
        env=$opt
        break
    else
        echo "invalid option"
    fi
done

#logging
exec > >(tee -i ~/install_log.txt)
exec 2>&1

printf "You chose to make a %s install for the %s machine\n" "$env" "$machine"

git config --global push.default simple
mkdir ~/Projects
cd ~/Projects
git clone https://github.com/anhtuann/dotfiles.git
cd ~/Projects/dotfiles

if [ $machine == "dreamland" ] || [ $machine == "sandman" ]; then
    ./scripts/arch/preparation.sh
    ./scripts/arch/pacaur.sh
    machine=$machine ./scripts/arch/cli_tools.sh
fi

#Activate good script
cd ~/Projects/dotfiles/machines/$machine
machine=$machine env=$env ./install.sh 


