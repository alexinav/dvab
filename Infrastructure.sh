
az group create --name "nGroup" --location "West Europe" --tags name[=value]
az storage account create --name "alextorre" --resource-group "nGroup" --location "West Europe" --tags name[=value] --sku Standard_LRS --kind StorageV2
az functionapp create --consumption-plan-location westeurope --name "alexfunktion" --os-type Windows --resource-group "nGroup" --runtime dotnet  westeurope --name alexfunkti
--storage-account "alextorre" --tags name[=value]