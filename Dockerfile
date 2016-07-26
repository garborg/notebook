FROM jupyter/datascience-notebook

MAINTAINER Sean Garborg <se@n-garb.org>

RUN pip3 install feather-format
RUN pip3 install blaze
RUN Rscript -e 'install.packages("feather", repos="http://cloud.r-project.org")'
RUN Rscript -e 'install.packages("nycflights13", repos="http://cloud.r-project.org")'

EXPOSE 8888
