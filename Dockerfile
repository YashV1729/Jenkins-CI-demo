# This is a Multi-Stage docker build for Golang
#----------------------------------------------


FROM ubuntu AS build
RUN apt-get update && apt-get install -y golang-go
ENV GO111MODULE=off
COPY . .
RUN CGO_ENABLED=0 go build -o /app .

#__________________________________________________
FROM scratch

# Copy the compiled binary from build stage
COPY --from=build /app /app

# Set entrypoint for container to run the binary
ENTRYPOINT ["/app"]
