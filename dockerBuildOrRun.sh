# The first CLI parameter ($1) is the operation we wish to perform

if [ "$1" = "build" ] || [ "$1" = "delete" ]
then

	sudo docker rmi -f tonysoft/centos-nodejs-oracle
		# remove any existing image with the same name
 
fi
 
if [ "$1" = "build" ] || [ "$1" = "both" ]
then
 
	sudo docker build -t tonysoft/centos-nodejs-oracle:latest .
		# build from the Dockerfil at the current directory "."
		# tag (-t) the container with the name specified
 
fi
 
if [ "$1" = "run" ] || [ "$1" = "both" ]
then

	sudo docker run --rm -it tonysoft/centos-nodejs-oracle bash
fi
