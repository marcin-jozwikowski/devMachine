# DevMachine

DevMachine is a bash script for turning a bare [Ubuntu](http://www.ubuntu.com/) install into a fully working PHP developer machine. Its basic principle was to speed up making a new virtual machine.

Basic SysOp know-how is required to make it up and running but most of the work is done automatically.

## Instructions

### Installing a VM
1. Download and instal [VM VirtualBox](https://www.virtualbox.org/)
2. Download and unpack [Ubuntu Image](http://www.osboxes.org/ubuntu/). Write down or remember username and password for your image.
3. Run VirtualBox and create a new machine:
	* Choose name type and version along with RAM size
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
7. After it's done you should be able to connect to your VM using SSH client such as [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/). (It **may** be required for you to log in after reboot to work properly). Default IP for DevMachine is `192.168.56.123`
8. Run any other script that you might need. See *Script Descriptions* below.

### Script descriptions
* **start.sh** - installs [GIT](https://git-scm.com/) and clones DevMachine repo.
* **1_init.sh** - configures network connections for static IP. Installs and configures ssh-server. Adds `devmach` user with *sudo* permissions and password set to `dev`.
* **2_utilities.sh** - installs and configures folllowing:
	* [vim](http://www.vim.org/)
	* [mc](https://www.midnight-commander.org/)
	* [tmux](https://tmux.github.io/)
	* [pip](https://pypi.python.org/pypi/pip)
* **3_lamp.sh** - installs and configures:
    * php5
    * apache2 with php5-fpm
    * mysql 5.6 (user: `root` password: `root`)
    * [mycli](http://mycli.net/)
    * vhost for `devmach.loc` domain (webroot: `/var/www/devmach.loc/` SSL: enabled)
    * phpinfo at http://devmach.loc/info.php
* **4_boot_to_terminal.sh** - configures GRUB to boot to terminal insted of Unity
    
### General Info
* System boots with false warning *Booting system without full network configuration...*. It's network config it doesn't understand that's causing this. Everything works like a charm. 