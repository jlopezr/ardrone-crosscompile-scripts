export ARDRONE_HOME=/opt/ardrone
export HOST=arm-none-linux-gnueabi
#export OUTPUT_DIR=$ARDRONE_HOME/stow/libzmq

git clone https://github.com/zeromq/libzmq.git
cd zmq-broker

mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../Cross-ARDrone.cmake ..
make
