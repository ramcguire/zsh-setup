# Install zsh and set as active shell
sudo apt install zsh
chsh -s $(which zsh) 

# Install antigen script
wget -q -O ~/.antigen.zsh git.io/antigen

# Copy configuration files
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

# Source .zshrc
source ~/.zshrc