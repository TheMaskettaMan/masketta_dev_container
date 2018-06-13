# Use an official Python runtime as a parent image
FROM python:3.6-slim
# Determine parent-image


WORKDIR /masketta_man

# Run in directory of new things to be developed (or modify ADD)
ADD . /masketta_man/

# Ensure correct "docker run" usage in order to properly use volume
# VOLUME ["/Dev_Vol"]

# Personal instructions for dev env package installation
#RUN apt install git-all
#RUN apt-get update && apt-get install -y git
#RUN apt-get install vim


# Make port 80 available to the world outside this container
EXPOSE 80

# Choose appropriate ENV variables
ENV NAME Masketta_Development_


CMD ["bash"]


