# BubbaDock
This still isn't working right yet.  I only spent about an hour on it, but if you use docker a lot, it's worth finishing.  I probably will when I start using docker a lot again.
## This is a bash script with no dependencies.
## Put it wherever your PATH will find them.
## I use ~/bin
* You can make this if it doesn't exist 
**mkdir -p ~/bin
**and fix your PATH  https://unix.stackexchange.com/questions/26047/how-to-correctly-add-a-path-to-path

## Create build run and stop shell scripts and Dockerfile template with one command

* usage: BubbaDock(imagename, fromimage, switches)
* Specify the image name that ends up in build --name imagename 
* and fromimage that ends up in Dockerfile FROM fromimage
* and switches like i and t.   

