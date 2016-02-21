## 6 Clone perfect
echo "Cloning Perfect"
cd ~
git clone https://github.com/PerfectlySoft/Perfect.git
## 7 Install PerfectLib dependencies
echo "Installing Perfect dependencies"
sudo apt-get install --assume-yes git cmake ninja-build clang uuid-dev libicu-dev icu-devtools libbsd-dev libedit-dev libxml2-dev libsqlite3-dev swig libpython-dev libncurses5-dev pkg-config libssl-dev libevent-dev libsqlite3-dev libcurl4-openssl-dev libicu-dev uuid-dev
## 8 Build PerfectLib
echo "Building PerfectLib"
cd ~/Perfect/PerfectLib
make
sudo make install
## 9 Build PerfectServer
echo "Building PerfectServer"
cd ~/Perfect/PerfectServer
make
## 10 Put libraries folder in place
mkdir ~/Perfect/PerfectServer/PerfectLibraries