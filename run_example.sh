## 10 Build example "URL Routing"
echo "Build URL Routing example"
cd ~/Perfect/Examples/URL\ Routing
make
## 12 Copy libraries into place
cp URLRouting.so ~/Perfect/PerfectServer/PerfectLibraries/URLRouting.so
## 13 Run server
cd ~/Perfect/PerfectServer
./perfectserverhttp