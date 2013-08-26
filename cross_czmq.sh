export ARDRONE_HOME=/opt/ardrone
export HOST=arm-none-linux-gnueabi
export OUTPUT_DIR=$ARDRONE_HOME/stow/czmq

#git clone https://github.com/zeromq/czmq.git 
cd czmq 

./autogen.sh
./configure --host=$HOST --prefix=$OUTPUT_DIR LDFLAGS="-L$ARDRONE_HOME/lib" CPPFLAGS="-I$ARDRONE_HOME/include" LIBS=""

make
make install

cd $OUTPUT_DIR
cd ..
stow czmq
