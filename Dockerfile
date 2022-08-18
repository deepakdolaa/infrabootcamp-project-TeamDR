# 1. base image
FROM nginx:alpine

# 2. copy Package only
#COPY package*.json ./
COPY /build/ /usr/share/nginx/html

# 3. expose port 
EXPOSE 80

# 4. Command to run after b
CMD ["nginx", "-g", "daemon off;"]