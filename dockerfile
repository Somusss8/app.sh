# Use Ubuntu base image
FROM ubuntu:24.04

# Install bash
RUN apt-get update && apt-get install -y bash

# Copy app.sh into container
COPY app.sh /app.sh

# Make script executable
RUN chmod +x /app.sh

# Run the script when container starts
CMD ["/app.sh"]
