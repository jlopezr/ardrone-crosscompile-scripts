wget http://sourceforge.net/projects/osal/files/OSAL-4.0/osal-4.0-release.tar.gz/download -O osal-4.0-release.tar.gz
wget http://sourceforge.net/projects/coreflightexec/files/cFE-6.1.1/cFE-6.1.1-OSS-release-3.tar.gz/download -O cFE-6.1.1-OSS-release-3.tar.gz 
tar xvzf osal-4.0-release.tar.gz
tar xvzf cFE-6.1.1-OSS-release-3.tar.gz
cd cFE-6.1.1-OSS-release
mv ../osal-4.0-release osal
source setvars.sh 
cd build/
cd pc-linux/
make
make install
