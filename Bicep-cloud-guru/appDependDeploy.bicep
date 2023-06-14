
resource webApplication 'Microsoft.Web/sites@2018-11-01' = {
  name: 'awesomewebapp19354871290587'
  location: 'eastus'
  properties: {
    serverFarmId: appServicePlan.id
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'awesomeasp8715815'
  location: 'eastus'
  sku: {
    name: 'F1'
    capacity: 1
  }
}
