NPM="2106652070"

./$NPM-getopt 
echo "====="

./$NPM-getopt -b
echo "====="

./$NPM-getopt -n Dodo
echo "====="

./$NPM-getopt -b -n Dodo
echo "====="

./$NPM-getopt -n Dodo -b
echo "====="

./$NPM-getopt -n Dodo -b World
echo "====="

./$NPM-getopt World -n Dodo -b 
echo "====="

./$NPM-getopt -n Dodo World -b 
echo "====="
