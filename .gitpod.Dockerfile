FROM gitpod/workspace-dotnet

RUN sudo apt-get update; \
    sudo apt-get install -y wget apt-transport-https software-properties-common; \
    wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb; \
    sudo dpkg -i packages-microsoft-prod.deb; \
    sudo apt-get update; \
    sudo apt-get install -y powershell

RUN dotnet tool install --global powershell

RUN cat << \EOF >> ~/.bash_profile;
export PATH="$PATH:/home/gitpod/.dotnet/tool";
EOF;
