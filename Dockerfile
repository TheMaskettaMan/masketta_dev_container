# Determine parent-image
FROM python:3.6-slim



# Ensure correct "docker run" usage in order to properly use volume
# ensure syntax is correct and if an alias is being run it is properly updated

VOLUME ["/dev_masketta_clan"]

#WORKDIR /dev_masketta_clan

# Run in directory of new things to be developed
WORKDIR /dev_masketta_

#select any files to add
#ADD . /masketta_dev_/


# Modify bashrc as desired
ADD ./dev_bash_config/* /root/
# .bashrc configuration updates upon container creation(circa)





# Personal instructions for dev env package installation
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y vim

# Make port 80 available to the world outside this container
EXPOSE 80

# Choose appropriate ENV variables
ENV NAME Masketta_Development_


CMD ["bash"]


