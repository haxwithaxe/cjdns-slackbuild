grab_and_tar(){
git clone https://github.com/cjdelisle/cjdns.git
mv cjdns cjdns-git.master
tar jcvf cjdns-git.master.tar.bz2 cjdns-git.master
rm -rf cjdns-git.master
}
