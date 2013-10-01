#!/bin/bash -eux

ln -s /bin/cat /usr/local/bin/more

curl $OVF_TOOL_URL > /tmp/install_ovf_tool.sh

echo -e "\nyes\n" | bash /tmp/install_ovf_tool.sh

rm /tmp/install_ovf_tool.sh
rm /usr/local/bin/more
