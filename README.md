Velochain Linux Build Image
===========================

This project sets up a Linux based build image for Velochain.

To create this image, you will need:
* [minweb][minweb]
* A LaTeX distribution to create the PDF file.
* QEMU.    
* GCC.

minweb: https://github.com/nanolith/minweb

Running the build scripts
-------------------------

To start, create a build directory and cd into it.  Run the extract shell
script.

    mkdir build
    cd build
    ../extract.sh ../BuildInstructions.tex

This will extract all relevant build scripts.  To create the build document PDF,
you should run `make-build-document.sh` from the build directory.

    ./make-build-document.sh

To build the image, run `make-image.sh` from the build directory.

    ./make-image.sh

Using the OS Image
------------------

The output image will be named `velochain-os-linux.img`.  This image should be
used with snapshots enabled to preserve it between builds.  The image is very
minimal.  It has a custom init process that spawns the network device, assigns
it a static IP address, sets the default gateway, sets the name server, and
finally spawns sshd.  Besides the build toolchain, sshd, and this custom init
process, the image is quite barebones.  The user can log into this image via ssh
as velobuild / velobuild.
