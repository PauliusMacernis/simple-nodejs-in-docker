# Specify a base image[:tag]
## if [:tag] part is not provided then the default ":latest" is used.
## "alpine" means "small as possible" in docker world, e.g. "FROM alpine", "FROM node:alpine", etc.
FROM node:alpine

# Run some commands to install additional programs
WORKDIR /usr/app

## E.g. Copy dependencies list to image, install npm dependencies from within image
COPY ./package.json ./
RUN npm install

## E.g. Copy all files, most of changes expected, package.json is also in but allways unchanged
COPY ./ ./

# Specify the main command to run on container startup
CMD ["npm", "start"]

