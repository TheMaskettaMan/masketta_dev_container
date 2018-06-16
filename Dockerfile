# Determine parent-image
FROM python:3.6-slim

# Run in directory of new things to be developed (or modify ADD)
WORKDIR /masketta_dev_

#select any files to add
#ADD . /masketta_dev_/


# Modify bashrc as desired
ADD ./bash_config/.dev_bashrc /root/.bashrc 
ADD ./bash_config/.dev_bash_aliases /root/.bash_aliases 
ADD ./bash_config/.dev_vimrc /root/.vimrc
# .bashrc configuration updates upon container creation(circa)

# Ensure correct "docker run" usage in order to properly use volume
# VOLUME ["/Dev_Vol"]

# Personal instructions for dev env package installation
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y vim

# Make port 80 available to the world outside this container
EXPOSE 80

# Choose appropriate ENV variables
ENV NAME Masketta_Development_


CMD ["bash"]


