FROM nginx:latest

# Install Dependencies
WORKDIR /usr/share/nginx/html

# Copy over the App
COPY . .

CMD ["nginx", "-g", "daemon off;"]