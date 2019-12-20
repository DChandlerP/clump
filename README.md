# Directions for modifying the Dockerfile

* ```FROM python:2.7-slim``` [Python has a Docker hub page](https://hub.docker.com/_/python) where you find alternate base images
* Use ```pip install packagename``` to install additional packages ```pip install numpy``` for example
* Use ```R -e "install.packages('packagename',dependencies=TRUE, repos='http://cran.rstudio.com/')"``` to install R packages
* Check out this [Dockerfile documentation](https://docs.docker.com/engine/reference/builder/) to learn more about build options available for Dockerfiles