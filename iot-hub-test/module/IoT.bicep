param location string = 'westeurope'
param nameprefix string
param responsibilitytag string

@allowed([
  'F1'
])
param sku string = 'F1'

resource IoTHub 'Microsoft.Devices/IotHubs@2022-04-30-preview' = {
  location: location
  name: '${nameprefix}-iothub'
  tags: {
    responsibility: responsibilitytag
  }
  sku: {
    name: sku
    capacity: 1
  }
}

