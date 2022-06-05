# Find list of metrics
$scope = az appservice plan show `
    --resource-group $RGName `
    --name $ASPName `
    --output tsv `
    --query id

az monitor metrics list-definitions --resource $scope 

