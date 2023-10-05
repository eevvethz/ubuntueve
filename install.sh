#!/bin/bash
#Script criado por Eevee, na intenção de auxiliar Hacker's ético.

clear
echo "Vamos começar atualizando o Ubuntu."
echo "Isso pode demorar um pouquinho."

sleep 4
cd ~
sudo apt update -y
sudo apt upgrade -y
clear

echo "Finalizamos a primeira parte. Vamos continuar!"
echo "Instalando o OpenSSH e o OpenSSL..."
echo "Se a instalação parar e lhe for pedido alguma coisa, basta aceitar digitando 'Y' e clicando em enter."

sleep 5
sudo apt install openssh openssl -y
clear

echo "O OpenSSH e o OpenSSL são dependências necessárias para que as aplicações estabeleçam conexões seguras (criptografadas) entre o cliente (você) e o servidor"
echo "Instalando o curl e o wget..."

sleep 4
sudo apt install curl wget -y
clear

echo "Instalando o ncurses-utils..."

sleep 4
sudo apt install ncurses-utils -y
clear

echo "Instalando o net-tools."

sleep 4
sudo apt install net-tools -y
clear

echo "Instalando algumas linguagens de programação. Isso vai demorar bastante."

sleep 4
sudo apt install python python2 ruby golang -y
clear

echo "Instalando o lolcat..."
echo "É ele quem vai deixar seu terminal elegante."

sleep 4
gem install lolcat
clear

echo "Instalando o Nmap..."

sleep 4
sudo apt install nmap -y
clear

echo "Instalando o SQLMap..."

sleep 4
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap/

cd ~
clear

echo "Para você usar o SQLMap é necessário estar no diretório sqlmap e executar o comando python3 sqlmap.py parâmetros (URL) "
sleep 3
clear

# Ferramentas adicionais
echo "Instalando o John the Ripper..."
sudo apt install john -y
clear

echo "Instalando o Burp Suite..."
sudo apt install burpsuite -y
clear

echo "Instalando o Aircrack-ng..."
sudo apt install aircrack-ng -y
clear

echo "Instalando o Nessus..."
sudo apt install nessus -y
clear

echo "Instalando o Hydra..."
sudo apt install hydra -y
clear

echo "Instalando o Nikto..."
sudo apt install nikto -y
clear

echo "Instalando o Wireshark..."
sudo apt install wireshark -y
clear

# Metasploit não está disponível nos repositórios padrão do Ubuntu, então vamos instalá-lo usando um script fornecido pelo Rapid7.
echo "Instalando o Metasploit..."

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
chmod 755 msfinstall && \
./msfinstall

cd ~
clear

echo "É isso! Você instalou todas as ferramentas necessarias para começar seus testes. Bem vindo(a) ao mundo Hacking!!!"
