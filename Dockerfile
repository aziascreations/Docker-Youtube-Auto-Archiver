FROM python:alpine AS base

# Used for debugging (Can be removed later or simply not installed)
RUN apk add --no-cache bash

# Used for compiling streamlink
RUN apk add --no-cache g++ make

# Used to compile lxml for streamlink (Ignore the first commented line)
# RUN apk add --no-cache libxslt-dev libxml2-dev
RUN apk add --no-cache py3-lxml

# Used for other required tasks
RUN apk add --no-cache ffmpeg

# Installing required Python packages
RUN pip install --upgrade streamlink
RUN pip install --upgrade yt-dlp

# Removing packages that are no longer needed (Only used for compiling streamlink)
# Some are left however (libgcc, libstdc++, libgomp, gmp)
# But it reduces the HDD usage from 198 MiB to 127 MiB for these packages
RUN apk del g++ make

# Running the application
# Thanks to jdpus for the "-u" flag (https://stackoverflow.com/a/29745541/4135541)
CMD ["python", "-u", "/app/app.py"]
