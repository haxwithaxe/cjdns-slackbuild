grab_and_tar(){
if [ -f cjdns-git.master ] ;then
	rm -r cjdns-git.master
fi
wget https://github.com/cjdelisle/cjdns/tarball/master -O - | tar zxvf -
mv cjdelisle-cjdns-[a-z0-9]?* cjdns-git.master
tar jcvf cjdns-git.master.tar.bz2 cjdns-git.master
rm -rf cjdns-git.master
}
