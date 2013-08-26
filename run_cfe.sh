cd cFE-6.1.1-OSS-release
cd build
cd pc-linux
cd exe
sudo sh -c 'echo 1000 > /proc/sys/fs/mqueue/msg_max'
./core-linux.bin 


