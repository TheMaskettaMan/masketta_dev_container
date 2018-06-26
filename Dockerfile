# Determine parent-image
FROM centos:7



# Ensure correct "docker run" usage in order to properly use volume
# ensure syntax is correct and if an alias is being run it is properly updated

VOLUME ["/dev_masketta_clan"]

#WORKDIR /dev_masketta_clan

# Run in directory of new things to be developed
WORKDIR /dev_masketta_

# Personal instructions for dev env package installation
RUN yum install -y git
RUN curl --silent --location https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
RUN yum install -y python36u
RUN yum install -y python-pip

#select any files to add
COPY ./package.json /dev_masketta_/
COPY ./initial_readme.txt /dev_masketta_/

# Modify bashrc as desired
COPY ./dev_bash_config/* /root/
# .bashrc configuration updates upon container creation(circa)


# install any packages in any requirements files EX:
#RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Choose appropriate ENV variables
ENV NAME Masketta_Development_

RUN cat ./initial_readme.txt

CMD ["bash"]


