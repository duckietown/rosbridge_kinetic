FROM duckietown/rpi-ros-kinetic-base:master19-no-arm

RUN sudo apt-get update
RUN sudo apt-get install -y --allow-unauthenticated ros-kinetic-rosbridge-server

EXPOSE 9090
EXPOSE 11311

CMD /bin/bash -c "source /opt/ros/kinetic/setup.bash; roslaunch rosbridge_server rosbridge_websocket.launch unregister_timeout:=999999999"
