# Use a lightweight alpine image with Go preinstalled
FROM golang:alpine 

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files and download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the rest of the application files
COPY . .

# Build the application
RUN go build -o app .

# Expose the port that the application will listen on
EXPOSE 8080

# Start the application
CMD ["./app"]
