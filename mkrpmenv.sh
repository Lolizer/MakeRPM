mkdir -p ~/rpmbuild/{RPMS,SRPMS,SOURCES,SPECS,tmp}

cat > $HOME/.rpmmacros << EOF
%_topdir %(echo $HOME)/rpmbuild
%_tmppath %(_topdir)/tmp
EOF
