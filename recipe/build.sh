./configure --prefix=$PREFIX
# bootstrap building make without make
bash build.sh
# make
./make XFAIL_TESTS="functions/wildcard" check
./make install
