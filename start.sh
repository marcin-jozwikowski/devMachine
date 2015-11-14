#! /bin/bash
sudo apt-get update
sudo apt-get -y install git
sudo rm dev_mach/ -r -f
git clone https://github.com/marcin-jozwikowski/dev_machine.git dev_mach
sudo find ./dev_mach/. -type f -name '*.sh' -exec chmod o+x {} \;
sudo rm start.sh -f