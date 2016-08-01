FROM ghost

MAINTAINER David, david.dimas333@gmail.com

# Add in better default config adapted from https://github.com/kitematic/ghost.git
ADD config.example.js config.example.js
COPY themes/digitalgarage content/themes/digitalgarage

# Fix ownership in src
RUN chown -R user $GHOST_SOURCE/content

# Default environment variables
ENV GHOST_URL http://apps.thedigitalgarage.io/community

ENV MAIL_USER 
ENV MAIL_PWD 