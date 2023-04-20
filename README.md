# cloud_native_monitoring_app
![image](https://user-images.githubusercontent.com/84711922/233507194-05c4d549-6d5f-4d43-8fe6-9986f728480b.png)

# Commands 
Syntax
The build command is run on the command-line using the following syntax:

docker build <options> <directory path or URL>
or
docker build [OPTIONS] PATH

OPTIONS: Optional parameters that can be used to customize the build process. Some common options include -t to tag the image with a name and optional tag, -f to specify the name of the Dockerfile, and --no-cache to disable the use of cache during the build process.

PATH: The path to the directory containing the Dockerfile and any other files needed for the build process.
The directory path will be the address of the directory where we want to set up our container.

We can also provide a Git URL instead.

If we want to include all the files/folders that are in the same directory as the Dockerfile, we can build the image like this:

docker build .

The . operator specifies the current directory.

docker build -t cloud_native_monitoring_app .

Docker run syntax:
docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

OPTIONS: Optional parameters that can be used to customize the container's behavior. Some common options include -d to run the container in detached mode, -p to map container ports to host ports, -v to mount volumes, and --name to assign a custom name to the container.

IMAGE: The name of the Docker image to use for the container.

COMMAND: The command to run inside the container. If no command is specified, Docker will use the default command specified in the image's Dockerfile.

ARG: Optional arguments to pass to the command specified by COMMAND.

docker run -d -p 5000:5000 cloud_native_monitoring_app

Now localhost:5000, application will be running


# Now Using aws services eks, application deploy to k8s
