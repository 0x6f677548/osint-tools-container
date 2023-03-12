# osint-tools-container
docker container with some osint tools for person of interest investigation ready to use

## container installed tools

### holehe
https://github.com/megadose/holehe

### buster
https://github.com/sham00n/buster

### sherlock
https://github.com/sherlock-project/sherlock

### maigret
https://github.com/soxoj/maigret

### pwnedornot
https://github.com/thewhiteh4t/pwnedOrNot


### ignorant 
https://github.com/megadose/ignorant
Searches for the usage of the target phone number in instagram, snapchat and amazon


## how to start the container
### How to build the image, run the container with bash, and remove it when exiting
`docker build -t osint-tools . && docker run --name osint-tools --rm -it osint-tools bash`