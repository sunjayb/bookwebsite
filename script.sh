STATUS=$(curl -I localhost &> /dev/stderr --write-out "%{http_code}") | if test $STATUS 200; then exit 0; fi
