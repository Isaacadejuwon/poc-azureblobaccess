# Install and Import Azure PowerShell module if not already installed
if (-not (Get-Module -Name Az -ListAvailable)) {
    Install-Module -Name Az -AllowClobber -Scope CurrentUser -Force
}

# Connect to Azure account
Connect-AzAccount

# Specify Azure subscription (if you have multiple subscriptions)
#  Select-AzSubscription -SubscriptionId "your_subscription_id"

# Set Azure resource group and VM name
$resourceGroupName = "your_resource_group_name"
$vmName = "your_vm_name"

# Start the VM
Start-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
