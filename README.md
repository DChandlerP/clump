# How Image was Created

1. Searched "container + python + r"
1. Read through the results until I found an example that was simple and worked although it had the wrong version of Python as its base
1. Searched [Dockerhub](https://hub.docker.com/) for the official Python page and found a similar image with correct version of Python for Clump, 2.7
1. Modified the Dockerfile to use ```FROM python:2.7-slim``` and tested it
1. Added dependencies requested one at a time building running ```docker build -t {dockerhub.username}/clump .``` after each iteration to test if there were issues
1. Once all depencies were added I ran the image: docker run -it chandlerprince/clump:latest bash
1. Ran the example on the [github repo for CLUMP](https://github.com/tycheleturner/CLUMP.git): ```python combined.clump.py -f example.inputfile.txt -p protein.2.length.txt -z 10000 -c example.controlfile.txt -t```
1. I pushed the image to dockerhub ```docker push chandlerprince/clump:latest```

# How to run the image
1. ```docker pull chandlerprince/clump:latest```
1. ```docker run -it chandlerprince/clump:latest bash```
1. ```python combined.clump.py -f example.inputfile.txt -p protein.2.length.txt -z 10000 -c example.controlfile.txt -t```