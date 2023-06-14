targetScope = 'subscription'
param env string 
param responsibilitytag string
module myIoT 'module/IoT.bicep'= {
  scope: rgiothub
  name: 'iot-module'
  params: {
    location: 'westeurope'
    nameprefix: env 
    responsibilitytag: responsibilitytag
  }
}
resource rgiothub 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rgiothub'
  location: 'westeurope'
  tags: {
    responsibility: responsibilitytag
  }
}
resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2019-11-01' = {
  scope: rgiothub
  name: 'name'
  location: location
  properties: {
    publicIPAllocationMethod: 'Dynamic'
    dnsSettings: {
      domainNameLabel: 'dnsname'
    }
  }
}


