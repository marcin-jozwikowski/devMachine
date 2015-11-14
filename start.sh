#! /bin/bash
sudo apt-get update
sudo apt-get -y install git
sudo rm dev_mach/ -r -f
git clone https://github.com/marcin-jozwikowski/devMachine.git dev_mach
sudo find ./dev_mach/. -type f -name '*.sh' -exec chmod o+x {} \;
sudo rm start.sh -f
echo ""
echo ""
echo "******************************************************"
echo "*                                                    *"
echo "*   Now run the following commands                   *"
echo "*                                                    *"
echo "*   cd dev_mach/                                     *"
echo "*   bash 1_init.sh                                   *"
echo "*                                                    *"
echo "******************************************************"
echo ""
echo ""
