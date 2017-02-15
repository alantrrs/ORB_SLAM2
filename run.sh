nvidia-docker run -v /home/ambidextrvs/empirical/data/:/data \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=$DISPLAY  -ti orb-slam \
  ./Examples/Monocular/mono_tum Vocabulary/ORBvoc.txt Examples/Monocular/TUM1.yaml /data/f9aff256ef307cf052dd233d54ba47fa9f6b3db734e30265023e1093a8aea940/rgbd_dataset_freiburg1_xyz/
