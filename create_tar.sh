mkdir -p prog-1.0/$1

install -m 755 task prog-1.0/$1

tar -zcvf prog-1.0.tar.gz prog-1.0/
