#!/bin/bash -eux

ln -s /bin/cat /usr/local/bin/more

echo -e "\nyes\n" | bash $OVF_TOOL_PATH

rm $OVF_TOOL_PATH
rm /usr/local/bin/more
