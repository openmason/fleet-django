# Django image description
#
# Usage:
# docker build -t openmason/fleet-django .
#
#
FROM openmason/fleet-pier:latest
MAINTAINER el aras<openmason@gmail.com>

# env variables

# ppa repositories

# Install django
RUN \
  pip install --upgrade django; \
  pip install --upgrade chaussette;

# Expose ports
EXPOSE 8080


