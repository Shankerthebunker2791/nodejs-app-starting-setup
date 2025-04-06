# base image to use
FROM node:latest   

# create a directory to hold the application code inside the image
WORKDIR /app

# copy package.json to the image
COPY package.json /app

# install the dependencies
RUN npm install

# copy the rest of the application code to the image {source} {destination}
COPY . /app

# expose the port the app runs on
EXPOSE 80

# define the command to run the application
CMD [ "node", "server.js" ]

## docker build -t nodejs-app-starting-setup:latest .

## docker run -d -p 8088:80 --rm --name nodejs_sample nodejs-app-starting-setup:latest
## docker run -d -p 8088:80 --name nodejs_sample nodejs-app-starting-setup:latest
## docker run -p 8088:80 --name nodejs_sample nodejs-app-starting-setup:latest

## docker start -ai nodejs_sample
## docker start nodejs_sample
## docker stop nodejs_sample

# docker build .
# docker build -t <image_name>:<tag>  . // build an image with a name and tag

# docker run -p 4000:80 <image_id>
# docker run -p 4000:80 -d <image_id> // run in detached mode
# docker run -d -it -p 4000:80 <image_id> {run in detached interactive mode} {host-port:container-port}

# docker images // list images 
# docker ps // list running containers
# docker stop <container_id> // stop a running container
# docker rm <container_id> // remove a container
# docker rmi <image_id> // remove an image

# docker cp <source> <container_id>:<path> // copy files from host to container, e.g: docker cp dummy/. awesome_boyd:/test
# docker cp <container_id>:<path> <destination> // copy files from container to host, e.g: docker cp awesome_boyd:/test/. dummy/.

# docker run -p 4000:80 -d --rm --name <custom_name> <image_id> // run in detached mode and remove the container when stopped and give it a name with a image_id
# docker run -p 4000:80 -d --rm --name <custom_name> <image_name>:<tag> // run in detached mode and remove the container when stopped and give it a name with a image_name:tag