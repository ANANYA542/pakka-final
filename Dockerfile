# Use a minimal base image
FROM alpine:latest

# Set working directory
WORKDIR /app

# Install necessary tools
RUN apk --no-cache add ca-certificates

# Copy PocketBase binary to the image
COPY pocketbase .

# Expose the default PocketBase port
EXPOSE 8090

# Start PocketBase
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
