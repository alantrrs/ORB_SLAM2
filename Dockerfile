FROM alantrrs/cuda-opencv:nvidia

RUN apt-get update

# Dependencies
## Pangolin
RUN apt-get install -y libglew-dev
RUN git clone https://github.com/stevenlovegrove/Pangolin.git /pangolin
WORKDIR /pangolin
RUN mkdir build
RUN cd build && cmake ..  && make -j

## SLAM
COPY . /orb-slam2
WORKDIR /orb-slam2
RUN chmod +x build.sh
RUN ./build.sh
