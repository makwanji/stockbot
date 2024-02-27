# Azure Deployment

![alt text](../architecture/sb-azure1.png)



## Bicep files:

* sbt-network.bicep - automates the [creation of a Network virtualNetworks](https://learn.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks?pivots=deployment-language-bicep)


1. Create resources group group
`az group create --name SbtDevRG --location 'Southeast Asia'`

2. Create network resources (Virtual Network and subnet)
`az deployment group create --template-file sbt-network.bicep --resource-group SbtDevRG`

3. Create a SSH Key which will be used to create a VM
`az deployment group create --template-file sbt-ssh-keys.bicep --resource-group SbtDevRG`

