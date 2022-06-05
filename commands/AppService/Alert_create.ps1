# Create an action group
az monitor action-group create `
    --resource-group $RGName `
    --name notify-admins `
    --action email my-action-name alexei.80@hotmail.fr


# Create scope
$scope = az appservice plan show `
    --resource-group $RGName `
    --name $ASPName `
    --output tsv `
    --query id
 

$condition = az monitor metrics alert condition create `
    --aggregation Total `
    --operator GreaterThan `
    --type static `
    --threshold 1 `
    --metric SocketOutboundTimeWait
    # [--dimension]
    # [--namespace]
    # [--num-periods]
    # [--num-violations]
    # [--sensitivity {High, Low, Medium}]
    # [--since]
    # [--skip-metric-validation {false, true}]



az monitor metrics alert create  `
    --resource-group $RGName `
    --scopes $scope `
    --name alert1 `
    --description "my description" `
    --condition $condition `
    # [--action]
    # [--auto-mitigate {false, true}]
    # [--disabled {false, true}]
    # [--evaluation-frequency]
    # [--region]
    # [--severity]
    # [--tags]
    # [--target-resource-type]
    # [--window-size]

