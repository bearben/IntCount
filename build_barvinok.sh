tar -xzvf barvinok-0.41.3.tar.gz
mv barvinok-0.41.3 barvinok
cp src/barvinok_count.c barvinok/barvinok_count.c
cd barvinok/
./configure LIBS=-static
sudo make
cd ../
