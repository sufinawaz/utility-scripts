#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$(basename $0) inserts shebang bash headers into all shell scripts in current directory that do not have said header."
    exit 0
fi


for file in `ls *.sh`; do
    firstLine=`head -1 $file`;
    if [[ $firstLine != '#!/bin/bash' ]]; then 
        read -n 1 -p "Insert shebang header to $file? y/Y to confirm. Any other key to skip: " response
        if [[ $response == [yY] ]]; then
            sed -i.tempfilefordelete '1s;^;#!/bin/bash\
;' $file && rm $file.tempfilefordelete && echo -e "\nSuccessfully inserted shebang header to ${file}"
        else
            echo -e "\nSkipping ${file}"
        fi
    fi
done;
