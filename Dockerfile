FROM nginx:alpine

#Copy the index.html file from the current directory into the container at /usr/share/nginx/html
COPY index.html /usr/share/nginx/html

#Expose port 80 to allow external access
EXPOSE 80

#start ngnix when the container start
CMD ["nginx" ,"-g", "daemon off;"]
