resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'awesomestoragefxsl'
  location: 'westeurope'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    supportsHttpsTrafficOnly: true
  }

  resource blob 'blobServices' = {
    name: 'default'

    resource container 'containers' = {
      name: 'awesomecontainer'
    }
  }
}



