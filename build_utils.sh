cd utils/

tar -xvf m4-1.4.18.tar.xz
cd m4-1.4.18/
./configure
sed -i 's/IO_ftrylockfile/IO_EOF_SEEN/' lib/*.c
echo "#define _IO_IN_BACKUP 0x100" >> lib/stdio-impl.h
make
make install
cd ../

tar -xvf gmp-6.2.0.tar.xz
cd gmp-6.2.0/
./configure
make
make install
cd ../

tar -xzvf glpk-4.65.tar.gz
cd glpk-4.65/
./configure
make
make install
cd ../

tar -xzvf ntl-11.3.2.tar.gz
cd ntl-11.3.2/src/
./configure NTL_GMP_LIP=on
make
make install
cd ../../

cd ../
