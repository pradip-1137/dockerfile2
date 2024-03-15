# Use nginx as the base image
FROM nginx:latest

# Copy custom configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy static files into the image
COPY index.html .

# Expose port 80
EXPOSE 80

# Command to start nginx
CMD ["nginx", "-g", "daemon off;"]
