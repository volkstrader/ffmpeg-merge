FROM ubuntu:latest

MAINTAINER HC Softech Inc. <hcsoftech@gmail.com>

# Create /data directory
RUN apt-get update && \
    apt-get install ffmpeg && \
    mkdir /data

# Add the concat script
ADD https://raw.githubusercontent.com/volkstrader/video-processing/master/concat.sh /usr/local/bin/
RUN chmod o+x /usr/local/bin/concat.sh

# Mount point
VOLUME /data

WORKDIR /data

