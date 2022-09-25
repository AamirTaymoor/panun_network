 #The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.8

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1
#####
RUN pip install --upgrade pip
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends
RUN apt-get install default-mysql-client -y
####
# create root directory for our project in the container
RUN mkdir /panun_network
RUN python3 -m pip install --upgrade pip

# Set the working directory to /panun_network
WORKDIR /panun_network

# Copy the current directory contents into the container at /panun_network
ADD . /panun_network/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt