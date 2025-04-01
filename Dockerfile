# Use an official lightweight web server image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the contents of the repository to the container's working directory
COPY . .

# Expose port 80 to allow access to the web app
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
