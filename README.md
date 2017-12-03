This project currently boots petalinux on the TE7015+TE0706 demo board.
It also comes with an app, gpioled that blinks the LED.

#### Install PetaLinux

Download and install [PetaLinux from Xilinx](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-design-tools/2017-2.html): [PetaLinux 2017.2 Installer](https://www.xilinx.com/member/forms/download/xef.html?filename=petalinux-v2017.2-final-installer.run&akdm=1)
The following commands assume you start from this project directory.

    export petalinux=../petalinux
    ~/Downloads/petalinux-v2017.2-final-installer.run $petalinux
    source $petalinux/settings.sh
    petalinux-util --webtalk off
    export petaproj=peta
    petalinux-create --type project --template zynq --name $petaproj
    source /opt/Xilinx/Vivado/2017.2/settings64.sh
    vivado #Export Hardware Definition File (*.hdf) to $petaproj
    cd $petaproj
    petalinux-config --get-hw-description
    petalinux-build
    
Optionally, you can add the TE7015 reference design under this project:
Download and install [TE7015 Reference Design](http://www.trenz-electronic.de/fileadmin/docs/Trenz_Electronic/TE0715/Reference_Design/2017.2/test_board/te0715-test_board-vivado_2017.2-build_05_20171110134232.zip) from [Trenz Electronic](https://shop.trenz-electronic.de/en/Download/?path=Trenz_Electronic/TE0715/Reference_Design/2017.2/test_board)

#### Set up TFTP

	sudo apt-get install xinetd tftpd tftp

Create /etc/xinetd.d/tftp and put this entry

	service tftp
	{
		protocol        = udp
		port            = 69
		socket_type     = dgram
		wait            = yes
		user            = nobody
		server          = /usr/sbin/in.tftpd
		server_args     = /tftpboot
		disable         = no
	}

Create a folder /tftpboot this should match whatever you gave in server_args. Mostly it will be tftpboot.

	sudo mkdir /tftpboot
	sudo chmod -R 777 /tftpboot
	sudo chown -R nobody /tftpboot
	sudo service xinetd restart
	\cp -fv $petaproj/images/linux/image.ub /tftpboot/


#### Testing

![Testboard Setup Photo:](https://drive.google.com/file/d/1QgnhWtieROUF3AMPLD7OoC0lsCBvR5Rs/view?usp=sharing)

Start UART terminal:

	sudo minicom -b 115200 -D /dev/ttyUSB0

JTAG boot: Start Vivado Hardware Manager, and connect the JTAG to target.

	petalinux-boot --jtag --u-boot --fpga --bitstream ../zsys/zsys.runs/impl_1/zsys_wrapper.bit

In the UART terminal, stop the auto uboot.

	print serverip
	setenv serverip <TFTP server ip>
	saveenv
	run netboot
	login: root password: root
	gpioled

Or, package SD images and boot from SD:

	petalinux-package --boot --fsbl images/linux/zynq_fsbl.elf --fpga images/linux/zsys_wrapper.bit --u-boot images/linux/u-boot.elf --boot-device sd

The green LED should be blinking.

#### Create the gpioled app

This is already committed.

    cd $petaproj
    export petaapp=gpioled
    petalinux-create --type apps --template c --name $petaapp --enable
    edit the $petaproj/project-spec/meta-user/recipes-apps/$petaapp/files/$petaapp.c
    petalinux-build -c $petaapp -x do_clean -x do_build -x do_install

Update $petaproj/project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi

	petalinux-build -c device-tree

Config Linux kernel

	petalinux-config -c kernel
	petalinux-build
	\cp -fv images/linux/image.ub /tftpboot/

