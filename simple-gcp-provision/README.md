# Simple GCP Provisioning

### GCP Resources
This scripts will provision some GCP resources such as:

* A single VPC
* A single Subnetwork
* 2 firewall rules (SSH and ICMP)
* A single f1-micro VM instance

Step-bystep guideline
* On GCP IAM Admin section, create a new service managemnt to be used by terraform for provision the resources. And create a new credential key with the JSON file.
* To adjust the terraform script, you can execute the command below.
```
 terraform fmt
```
* To initiatlize the working dirctories where these terraform scripts located, please run command below.
```
terraform init
```  
* To create execution plan before I proceed to provision the resources, you need to run the command below.
```
terraform plan -var "gcp-project={project-name}" -var "gcp-credential-file={credential-file}" -var "gcp-default-region={region}" -var "gcp-default-zone={zone}"
```
* To proceed to provision the resource on your GCP, please run the command below.
```
terraform apply  -var "gcp-project={project-name}" -var "gcp-credential-file={credential-file}" -var "gcp-default-region={region}" -var "gcp-default-zone={zone}"
```
You may get the prompt qusetion for asking your confirmation to proceed. For this, you entry "yes".

* To destroy the resources you created, please run the command below.
```
terraform destroy  -var "gcp-project={project-name}" -var "gcp-credential-file={credential-file}" -var "gcp-default-region={region}" -var "gcp-default-zone={zone}"
```


Here's the reference for the variables taht you need to entry in both execute plan and apply command:
* Replace {project-name} with the actual name of your GCP project where you wish to provision the resource(s).
* Replace {credential-file} with name of the credential file for the Service Account that you created on the 1st step. For example: us-central1
* Replace {region} woth the actual region that you wish to provision the resource(s).
* Replace {zone} woth the actual zone that you wish to provision the resource(s). For example: us-central1-a