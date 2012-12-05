extra_grab_master(){
	find . -maxdepth 1 -type d -iname "$gitowner-$PRGNAM-*" -exec rm -rf {} \;
	wget https://github.com/$gitowner/$PRGNAM/tarball/$gitbranch -O - | tar zxvf -
	gitdir=$(find . -maxdepth 1 -type d -iname "$gitowner-$PRGNAM-*" | head | sed 's/^\.\///')
	githash=`echo $gitdir | cut -d'-' -f3`
	VERSION=$githash
}

extra_get_opts(){
	for a in $* ;do
		case "$a" in
			"fullauto")
				FULLAUTO=true
				gitowner="cjdelisle"
				gitbranch="master"
				;;
			*)
				if [ "x$a" -ne "x" ] ;then
					gitdir=$a
					gitowner=`echo $gitdir | cut -d'-' -f1`
					githash=`echo $gitdir | cut -d'-' -f3`
					VERSION=$githash
					FULLAUTO=false
				fi
				;;
		esac
	done
}

