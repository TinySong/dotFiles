GOPATH_PATH=~/development/golang/bin
DEST_PATH=/usr/local/bin
for file in ${GOPATH_PATH}/*;do
    ##echo $file
    base_name=`basename $file`
    echo "ln -s $file $DEST_PATH/$base_name"
done
