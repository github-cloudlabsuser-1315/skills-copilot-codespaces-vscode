# Import the Azure module
Import-Module Az

# Define variables
$storageAccountName = "mystorageaccount"
$resourceGroupName = "myResourceGroup"
$location = "West Europe"

# Authenticate to Azure
Connect-AzAccount

# Create the resource group if it doesn't exist
if (-not (Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue)) {
    New-AzResourceGroup -Name $resourceGroupName -Location $location
}

# Create the storage account
$storageAccount = New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                                       -Name $storageAccountName `
                                       -Location $location `
                                       -SkuName Standard_LRS `
                                       -Kind StorageV2

# Output the storage account details
$storageAccount | Format-List