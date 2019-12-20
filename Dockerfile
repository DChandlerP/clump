FROM python:2.7-slim
# Use pip install to install python packages and add == if you need a specific version of a package
# R -e "install.packages('packagename',dependencies=TRUE, repos='http://cran.rstudio.com/')" to install R packages
RUN apt-get update && apt-get install -y --no-install-recommends r-base r-base-dev && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
CMD ["/bin/bash"]




