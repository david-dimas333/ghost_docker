FROM ghost

MAINTAINER David, david.dimas333@gmail.com

# Add in better default config adapted from https://github.com/kitematic/ghost.git
ADD config.example.js config.example.js
COPY themes/interphase content/themes/interphase

# Fix ownership in src
RUN chown -R user $GHOST_SOURCE/content

# Default environment variables
ENV GHOST_URL http://my-ghost-blog.com