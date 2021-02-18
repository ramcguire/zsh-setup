# Install zsh, autojump, and pip3
sudo apt install zsh autojump python3-pip3
# Set zsh as default shell
chsh -s $(which zsh) 

# Install antigen script
wget -q -O ~/.antigen.zsh git.io/antigen

# Copy configuration files
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
