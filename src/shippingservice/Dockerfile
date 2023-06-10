# Use the official Golang image as a parent image
FROM golang:latest

# Set the working directory to /app
WORKDIR /app

# Copy the source code to the container
COPY . .

# Build the application
RUN go build -o app .

# Expose port 8080
EXPOSE 50051

# Run the application
CMD ["./app"]
