# $scope = az appservice plan show `
#     --resource-group $RGName `
#     --name $ASPName `
#     --output tsv `
#     --query id
 
# $scope


$action = az monitor action-group create `
    --resource-group $RGName `
    --name notify-admins `
    --action email my-action-name alexei.80@hotmail.fr

$action