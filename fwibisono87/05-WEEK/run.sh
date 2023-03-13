echo "aclocal"
time aclocal
echo "done aclocal"
echo "autoconf"
time autoconf
echo "done autoconf"
echo "automake --add-missing"
time automake --add-missing
echo "done automake"
echo "configure"
time ./configure
echo "done configure"
echo "making"
time make
echo "done making"
./prog1
./prog2
echo "done"
ls -al
echo "cleanup"
time make superclean
echo "byebye"
