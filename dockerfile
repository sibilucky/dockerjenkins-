# Use the official Alpine image as the base
FROM alpine:latest

# Install any packages you need
RUN apk add --no-cache curl

# Set the command to run when the container starts
CMD ["sh"]
