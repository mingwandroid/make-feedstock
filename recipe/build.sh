./configure --prefix=$PREFIX
# bootstrap building make without make
bash build.sh
# make
./make check TS_OPT_functions_known_fail="yes" TS_OPT_functions_verbose="yes"
./make install
