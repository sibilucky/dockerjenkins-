# Use Alpine 3.1.0 as the base image
FROM alpine:3.1.0

# Install any necessary packages (example: curl)
RUN apk add --no-cache curl

# Set a default command (example: an echo command)
CMD ["echo", "Hello from Alpine 3.1.0!"]
