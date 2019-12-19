FROM python:2.7-slim

RUN apt-get update && apt-get install -y --no-install-recommends git r-base r-base-dev && rm -rf /var/lib/apt/lists/* \
    && pip install numpy scipy rpy2==2.8.6. \
    && R -e "install.packages('fpc',dependencies=TRUE, repos='http://cran.rstudio.com/')" \
    && git clone https://github.com/tycheleturner/CLUMP.git
WORKDIR /CLUMP
CMD ["/bin/bash"]




