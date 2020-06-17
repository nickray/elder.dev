# Virtual Background

Source: https://elder.dev/posts/open-source-virtual-background/

Note: The app.js takes a looong time to start up.  
Just be patient.



`make bodypix` starts the service which masks out the background, and needs NVIDIA

`make` (re)starts the virtual webcam



To build the images, on Arch Linux you need `linux-headers`, `v4l2loopback-dkms`  and the AUR package `nvidia-container-toolkit`.

