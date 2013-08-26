export ARDRONE_HOME=/opt/ardrone
export HOST=arm-none-linux-gnueabi
export OUTPUT_DIR=$ARDRONE_HOME/stow/zlib-1.2.8


wget http://zlib.net/zlib-1.2.8.tar.gz
tar xvzf zlib-1.2.8.tar.gz

cd zlib-1.2.8 
CC=$HOST-gcc ./configure --prefix=$OUTPUT_DIR
make
make install
