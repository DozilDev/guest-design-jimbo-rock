# Use an official lightweight Linux image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the HTML files from the current directory (i.e., the directory containing this Dockerfile)
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Define the default command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]