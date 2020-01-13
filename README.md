# Directions for modifying the Dockerfile

* ```FROM python:2.7-slim``` [Python has a Docker hub page](https://hub.docker.com/_/python) where you can find alternate base images. Alpine may be smaller, but it uses a different package manager and has different libraries installed by default (e.g., libc vs glibv). It was much easier to install with a base image that utilized apt-get. 
* Use ```pip install packagename``` to install additional packages ```pip install numpy``` for example. ```==`` let's you change the version numbers. 
* Use ```R -e "install.packages('packagename',dependencies=TRUE, repos='http://cran.rstudio.com/')"``` to install individual R packages
* Check out this [Dockerfile documentation](https://docs.docker.com/engine/reference/builder/) to learn more about build options available for Dockerfiles.

## Conda vs Pip

It's easier to create an image with Conda because it will grab all the dependencies you could ever possibly need. But, it's also bloated. This image with Conda was 700MB bigger compressed with miniconda2's image than the version I created with pip (1GB+ with miniconda2 vs under 300MB with pip).

## Keep Images Small

It's not just about bandwidth. Smaller containers has become the industry norm because it's also easier to maintain, more secure, easier to reckognize bottlencks, faster to startup, etc.

## Remove any files not needed in the final image

In this example I got rid of git because it isn't needed after it clones the repo.


