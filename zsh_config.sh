#!/usr/bin/zsh

#criate backup
cp ~/.zshrc  ~/.zshrc_old
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/.oh-my-zsh .
rm ~/.zshrc
cp ./zshrc_home ~/.zshrc
cp ./zshenv_home ~/.zshenv
#powerlevel10k
cp -r ./.fonts/ ~/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/zsh_configs/.oh-my-zsh/custom/themes/powerlevel10k

#zsh-syntax-highlighting
git clone --recursive https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh_configs/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
#zsh-autosuggestions
git clone --recursive https://github.com/zsh-users/zsh-autosuggestions $HOME/zsh_configs/.oh-my-zsh/custom/plugins/zsh-autosuggestions
#zsh-abbr
git clone --recursive https://github.com/olets/zsh-abbr --single-branch --branch main --depth 1 $HOME/zsh_configs/.oh-my-zsh/custom/plugins/zsh-abbr
#z
git clone --recursive git@github.com:rupa/z.git $HOME/zsh_configs/.oh-my-zsh/custom/plugins/z


#
source ~/.zshrc 
