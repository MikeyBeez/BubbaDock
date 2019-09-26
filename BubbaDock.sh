# Create build.sh, run.sh, stop.sh, and Dockerfile in current directory
#
####
touch build.sh 
echo "#! /bin/bash" >> build.sh
echo "#" >> build.sh
echo "# build.sh" >> build.sh
echo "#" >> build.sh
echo "# Build the base image images." >> build.sh
echo "#" >> build.sh
echo "docker build -t my-hr-head ." >> build.sh
#
####
touch run.sh 
echo "#! /bin/bash" >> run.sh
echo "#" >> run.sh
echo "# Run the docker container. Stop any previously running copies. " >> run.sh
echo "#" >> run.sh
echo "./stop.sh" >> run.sh
echo "docker run --name='my-hr-head' \" >> run.sh
echo "    -p 11311:11311 -it my-hr-head" >> run.sh
#
####
#
touch stop.sh
echo "#! /bin/bash" >> stop.sh
echo "# stop.sh" >> stop.sh
echo "Stop any running containers previously started with 'run.sh'" >> stop.sh
echo "# >> stop.sh
echo "TAINER=`docker ps |grep my-hr-head |cut -f1 -d' '`" >> stop.sh
echo "if test 'xTAINER' != x; then" >> stop.sh
echo "echo -n 'Stopping leftover container.. '" >> stop.sh
echo "  docker stop -t 1 $TAINER" >> stop.sh
echo "fi" >> stop.sh
echo "TAINER=`docker ps -a |grep my-hr-head`" >> stop.sh
echo "if test x'$TAINER' != x; then>> stop.sh" >> stop.sh
echo "	echo -n 'Removing.. '" >> stop.sh
echo "	docker rm my-hr-head" >> stop.sh
echo "fi" >> stop.sh
#
####
#
touch Dockerfile
#
echo "# To build:" >> Dockerfile
echo "# docker build -t my-hr-head . >> Dockerfile
echo "FROM ubuntu:14.04 >> Dockerfile
echo "MAINTAINER Mike Bee mbonsign@gmail.com >> Dockerfile
echo "#" >> Dockerfile
echo "ENV DEBIAN_FRONTEND noninteractive >> Dockerfile


 

