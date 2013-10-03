bosh-packer-templates
=====================

* Update packer to at least 0.3.9
* Get your unique ovftool URL from http://www.vmware.com/support/developer/ovf/

        cd bosh-stemcell

        gem install berkshelf
        rbenv rehash # Only if you're using rbenv like we are
        berks install --path=cookbooks

        rm -rf output-virtualbox/

        packer build \
          -var 'aws_access_key=YOUR-AWS-ACCESS-KEY' \
          -var 'aws_secret_key=YOUR-AWS-SECRET-KEY' \
          -var 'ovf_tool_url=https://example.com/ovf-tool-installer.sh' \
          template.json


        vagrant box add bosh-stemcell bosh-stemcell-aws.box
        vagrant box add bosh-stemcell bosh-stemcell-virtual.box

* Manually make the new AMI public to allow other users to launch it
* Manually upload the boxes somewhere to allow other users to use them
