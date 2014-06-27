# Django image description
#
# Usage:
# docker build -t openmason/fleet-django .
#
#
FROM openmason/fleet-base:latest
MAINTAINER el aras<openmason@gmail.com>

# env variables

# ppa repositories

# Install django
RUN \
  pip install --upgrade Django==1.6.5 chaussette; 

ADD mysite /mysite
ADD circus/conf.d/mysite.conf /etc/circus/conf.d/mysite.conf

#RUN \
#  pip install -r /mysite/requirements.txt; \
#  cd /mysite; \
#  python manage.py syncdb  --noinput; 

CMD ["/usr/local/bin/circusd", "/etc/circusd.conf"]

# Expose ports
EXPOSE 8080
