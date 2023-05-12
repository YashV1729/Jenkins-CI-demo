## Building CI pipeline using Jenkins
This repo deals with the Continuous Integration part using Jenkins.

### Project Overview
 - Developed a Golang webserver.
 - Containerised the application using Multi-Stage Docker Build.
 - Created Jenkins file:
   - Cloning the repository,
   - Building the image,
   - Undergoes Unit Tests,
   - Pushing the image to Docker Hub.
 - Triggering Jenkins job on any image updates.
