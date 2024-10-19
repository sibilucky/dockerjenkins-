# Use the official Alpine image as the base
FROM alpine:latest

# Update the package repository and install basic packages
RUN apk add --no-cache bash curl

# Add your custom scripts, files, or setup here
# For example, to create a directory and add a script:
RUN mkdir /myapp
WORKDIR /myapp
COPY myscript.sh /myapp/myscript.sh
RUN chmod +x myscript.sh

# Define the default command to run when the container starts
CMD ["./myscript.sh"]

