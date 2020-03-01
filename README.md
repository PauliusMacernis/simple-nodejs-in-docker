# A very simple NodeJS application in Docker container

Following first 4 (of 19) sections in  
https://www.udemy.com/course/docker-and-kubernetes-the-complete-guide/

Some diagrams to get the theory behind may be found here:  
https://github.com/sugalvojau/Knowledge-base/tree/master/Summaries-diagrams/day-1

## How to use it

Build the tagged image:  
`docker build -t pauliusmacernis/dockernodejssimple:latest .`  

Run the container of the image, forward ports comming to 1234 into container's 8080:  
`docker run -p 1234:8080 pauliusmacernis/dockernodejssimple`  

The app bacame available here:  
http://localhost:1234/  
