@description('Location for all resources.')
param location string = resourceGroup().location


var virtualNetworkName = 'App-vNet'

// Public Subnet
var subnetNamePublicA = 'PublicSubnetA'
var subnetNamePublicB = 'PublicSubnetB'
var subnetIPA = '10.0.1.0/24'
var subnetIPB = '10.0.11.0/24'

// Private Subnet
var subnetNamePrivateA = 'PrivateSubnetA'
var subnetNamePrivateB = 'PrivateSubnetB'
var subnetPrivateIPA = '10.0.2.0/24'
var subnetPrivateIPB = '10.0.21.0/24'

// DB Subnet
var subnetNameDBA = 'DBSubnetA'
var subnetNameDBB = 'DBSubnetB'
var subnetDBIPA = '10.0.3.0/24'
var subnetDBIPB = '10.0.31.0/24'

// route table
var publicRoute = 'App-public-route'
var privateRoute = 'App-private-route'


resource virtualNetwork 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: virtualNetworkName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: subnetNamePublicA
        properties: {
          addressPrefix: subnetIPA
        }
      }
      {
        name: subnetNamePublicB
        properties: {
          addressPrefix: subnetIPB
        }
      }
      {
        name: subnetNamePrivateA
        properties: {
          addressPrefix: subnetPrivateIPA
        }
      }
      {
        name: subnetNamePrivateB
        properties: {
          addressPrefix: subnetPrivateIPB
        }
      }
      {
        name: subnetNameDBA
        properties: {
          addressPrefix: subnetDBIPA
        }
      }
      {
        name: subnetNameDBB
        properties: {
          addressPrefix: subnetDBIPB
        }
      }
    ]
  }
}
