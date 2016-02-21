Vagrant.configure(2) do |config|
  ## 1
  config.vm.box = "larryli/wily64"
  config.vm.network "private_network", ip: "192.168.10.10"
 
config.vm.provision "shell", inline: <<-SHELL
    ## 2
    sudo apt-get --assume-yes install clang
    ## 3
    curl -O https://swift.org/builds/swift-2.2-branch/ubuntu1510/swift-2.2-SNAPSHOT-2016-02-08-a/swift-2.2-SNAPSHOT-2016-02-08-a-ubuntu15.10.tar.gz
    ## 4
    tar zxf swift-2.2-SNAPSHOT-2016-02-08-a-ubuntu15.10.tar.gz
    ## 5
    echo "export PATH=/home/vagrant/swift-2.2-SNAPSHOT-2016-02-08-a-ubuntu15.10/usr/bin:\"${PATH}\"" >> .profile
    echo "Swift has successfully installed on Linux"
    ## 6 Copy user provision script to home directory
    cp /vagrant/provision.sh /home/vagrant/provision.sh
    cp /vagrant/run_example.sh /home/vagrant/run_example.sh
    ## 7 Run user provision script as user
    runuser -l  vagrant -c '/home/vagrant/provision.sh'
    ## 8 Run example using "~/run_example.sh" inside the VM
  SHELL
end
