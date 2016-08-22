FROM ghost

MAINTAINER David, david.dimas333@gmail.com

# Add in better default config adapted from https://github.com/kitematic/ghost.git
ADD config.example.js config.example.js

# Add digitalgarage theme
COPY themes/digitalgarage content/themes/digitalgarage

# Change favicons
ADD favicons/favicon.ico core/shared/favicon.ico
ADD favicons/large.png core/built/assets/img/large.png
ADD favicons/medium.png core/built/assets/img/medium.png
ADD favicons/small.png core/built/assets/img/small.png
ADD favicons/touch-icon-ipad.png core/built/assets/img/touch-icon-ipad.png
ADD favicons/touch-icon-iphone.png core/built/assets/img/touch-icon-iphone.png

# Fix ownership in src
RUN chown -R user $GHOST_SOURCE/content

# Default environment variables
ENV GHOST_URL http://apps.thedigitalgarage.io/community
ENV MAIL_USER postmaster@mg.thedigitalgarage.io
ENV MAIL_PWD thedigitalgarage#!

# Install GIT
RUN apt-get update && apt-get install -y git