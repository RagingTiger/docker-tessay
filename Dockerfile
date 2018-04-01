# base image
FROM python:2

# extra goodies
RUN apt-get update && apt-get install -y \
    nano \
    tree

# set working dir to procfile location
WORKDIR /usr/src/TEssay

# load source code
ADD TEssay/ /usr/src/TEssay

# now pip install
RUN pip install -r requirements.txt

# expose correct port and quit :)
EXPOSE 8000
    
