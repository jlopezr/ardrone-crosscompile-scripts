export ARDRONE_HOME=/opt/ardrone
export HOST=arm-none-linux-gnueabi
export OUTPUT_DIR=$ARDRONE_HOME/stow/libxml2-2.9.1

wget ftp://xmlsoft.org/libxml2/libxml2-git-snapshot.tar.gz
tar xvzf libxml2-git-snapshot.tar.gz

cd libxml2-2.9.1

./configure --host=$HOST --prefix=$OUTPUT_DIR LDFLAGS="-L$ARDRONE_HOME/lib" CPPFLAGS="-I$ARDRONE_HOME/include" LIBS="" --without-python
make
make install
