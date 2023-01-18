# Infrastructure as Code (IaC)

Use the IaC repository to manage virtual resources on the MNL cloud infrastructure, using GitHub, Jenkins, and Terraform.

## Instructions: How to use this repository

Follow the steps below to interact with the IaC services:

* Create a new branch with your name.
* Update the necessary configuration files and commit the changes to your branch. This will trigger a Jenkins pipeline that will verify that the specified changes can be implemented.
* If the Jenkins pipelines finish successfully, create a new pull request to the master branch. Add a detailed description to the pull requess, highlighting the purpose of the infrastructure updates. An MNL admin will review the pull request and approve the merge into the master branch.
* Merging it into the master branch will trigger the actual IaC services that will implement the specified changes.

Once the master pipeline finishes, you will be notified via email for the expected infrastructure updates.

## Instructions: Create/Update/Delete Openstack VMs

Follow the steps below to create/update/delete VMs on an Openstack cloud:

* Navigate to the folder containing the configuration files for the Openstack cloud that you want to use, under the [openstack](./openstack/) folder. You can find more details about the available MNL clouds [here](https://github.com/medianetlab/infrastructure/blob/master/Clouds.md).
* Read the instructions in the `README.md` file in the respective openstack folder.
* Update the necessary configurations files following the above instructions