# Variables
$Global:Subscription = "alexeisubscription"
$Global:Subscription = "Azure subscription 1"

#resource Group :
#southcentralus centralus francecentral westus2 eastus
$Global:RGLocation = "francecentral"
$Global:RGName = "webapp-rg"

#General Settings :"
$Global:AppPath = ".\web"

#######################################################################
# Steps :

az group create --name $RGName --location $RGLocation

."commands\AppService\AS_create.ps1"





