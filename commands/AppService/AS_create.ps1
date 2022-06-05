"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


#Variables :
$Global:ASPName = "alexeiasp"
$Global:ASName = "alexeias"


################################################################
"CREATE AN APP SERVICE PLAN :"

az appservice plan create `
    --name $ASPName `
    --resource-group $RGName `
    --location $RGLocation `
    --sku F1
    # [--app-service-environment]
    # [--hyper-v]
    # [--is-linux]
    # [--no-wait]
    # [--number-of-workers]
    # [--per-site-scaling]
    # [--tags]
    # [--zone-redundant]


################################################################
"CREATE AN APP SERVICE :"

az webapp create `
    --resource-group $RGName `
    --name $ASName `
    --plan $ASPName
    # [--assign-identity]
    # [--deployment-container-image-name]
    # [--deployment-local-git]
    # [--deployment-source-branch]
    # [--deployment-source-url]
    # [--docker-registry-server-password]
    # [--docker-registry-server-user]
    # [--https-only {false, true}]
    # [--multicontainer-config-file]
    # [--multicontainer-config-type {COMPOSE, KUBE}]
    # [--role]
    # [--runtime]
    # [--scope]
    # [--startup-file]
    # [--subnet]
    # [--tags]
    # [--vnet]


