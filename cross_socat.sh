export ARDRONE_HOME=/opt/ardrone
export HOST=arm-none-linux-gnueabi
export OUTPUT_DIR=$ARDRONE_HOME/stow/socat-1.7.2.2

wget http://www.dest-unreach.org/socat/download/socat-1.7.2.2.tar.gz
tar xvzf socat-1.7.2.2.tar.gz
cd socat-1.7.2.2

./configure --host=$HOST --prefix=$OUTPUT_DIR LDFLAGS="-L$ARDRONE_HOME/lib" CPPFLAGS="-I$ARDRONE_HOME/include" LIBS=""

make
make install
