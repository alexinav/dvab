$TagNV = "name=value"
$location = "westeurope"
$group = "nGroup"
$storaccount1 = "alextorre"
#STORAGE
$SKU_LRS = "Standard_LRS"
#$SKU_
#FUNCTION
$funktion1 = "alexfunction"

az group create --name $group --location $location --tags $TagNV

az storage account create --name $storaccount1 --resource-group $group --location $location --tags $TagNV --sku $SKU_LRS --kind StorageV2

az functionapp create --consumption-plan-location $location --name $funktion1 --os-type Windows --resource-group $group --runtime dotnet --storage-account $storaccount1 --tags $TagNV

#VARIABLE FOR STORAGE
$keyaccount = az storage account keys list -g nGroup -n alextorre --query [0].value -o tsv
#CREATE CONTAINER BLOB; PRIVATE ACCESS
az storage container create --name conteinimg2 --account-name alextorre --public-access off --account-key $keyaccount

#CREATE FUNCTION SAS, GET SAS
