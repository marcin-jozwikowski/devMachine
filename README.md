# DevMachine

DevMachine is a bash script for turning a bare Ubuntu install into a fully working PHP developer machine. Its basic principle was to speed up making a new virtual machine.

Basic SysOp know-how is required to make it up and running but most of the work is done automaticaly.

## Instructions

### Installing a VM
1. Download and instal [VM VirtualBox](https://www.virtualbox.org/)
2. Download and unpack [Ubuntu Image](http://www.osboxes.org/ubuntu/). Write down or remember username and password for your image.
3. Run VirtualBox and create a new machine:
	* Choose name type and version alond with RAM size
	* When on *Hard Disk* step choose *Use an existing hard disk file* and point to downloaded *Ubuntu Image*. It's a good idea to copy the *Image* to VM directory first.
	* Confirm and save VM
4. Configure network connections:
	* Right-click your new VM and choose *Settings*
	* Go to *Network* section and open *Adapter 2* tab
	* Check *Enable Network Adapter*
	* Change *Attached to:* to *Host-only adapter*

### Running DevMach
1. Start your VM and login. Wait for Ubuntu to check for updates and install them.
2. Open terminal `Ctrl+Alt+T` and download starting script. This can be done by runnig one of folowing commands:
	* `wget https://raw.githubusercontent.com/marcin-jozwikowski/devMachine/master/start.sh`
	* `wget -O start.sh http://devmach.jozwikowski.pl/`
3. Make the script executable: `chmod o+x start.sh`
4. Run it: `bash start.sh`
5. Navigate to *dev_mach* directory: `cd dev_mach`
6. Run *1_init* script: `bash 1_init.sh`
7. After it's done you should be able to connect to your VM using SSH client such as PuTTY. (It **may** be required for you to log in after reboot to work properly). Default IP for DevMachine is `192.168.56.123`
8. Run any other script that you might need. See *Script Descriptions* below.

### Script descriptions
* **start.sh** - installs GIT and clones DevMachine repo.
* **1_init.sh** - configures network connections for static IP. Installs and configures ssh-server.
* **2_utilities.sh** - installs and configures folllowing:
	* vim
	* mc
	* tmux