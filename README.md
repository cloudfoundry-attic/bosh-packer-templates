
## Prerequisites
You need to install a few dependencies for the build to succeed. We include examples using Homebrew here. Replace with your package manager of choice.

* Install [Chef-DK](https://downloads.chef.io/chef-dk/) to get berkshelf
  ```
  brew cask install chefdk
  ```
* Install packer
  ```
  brew cask install packer
  ```
* Download [OVF Tool](https://www.vmware.com/support/developer/ovf/)
* Clone the repository and vendor the cookbooks
  ```
  cd bosh-stemcell
  berks vendor cookbooks
  ```

## Create a stemcell builder machine
```
packer -var 'ovf_tool_path=<path to your OVF Tool download>' -var 'build_identifier=<some unique string identifier>' -var 'aws_access_key=<your aws access key>' -var 'aws_secret_key=<your aws secret key>' template.json
```
This command builds both boxes: AWS and virtualbox. If you want to build only one of these boxes, specify an additional argument `-only=<amazon-ebs|virtualbox-iso>`. Note that you can set the aws keys to random strings if you don't want to build an AWS box.
