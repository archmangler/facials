# Facial: Simple Facial Recognition Web Service

* A simple, dockerised self-hostable face recognition service in Python flask and OpenCV

## Running the app

* Ensure you have docker desktop installed on your local computer.

Then, simply:

* Run the docker image build: ./build.sh
* ./run.sh and go to http://localhost:5000

## Building the docker image:

```
./build
```

* The docker image will be built with the latest commit hash of the repo.
* Modify build.sh script to push it to remote repository of your choice.

