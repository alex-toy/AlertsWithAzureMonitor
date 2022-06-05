# AlertsWithAzureMonitor

In this project, we will configure an alert on an Azure AppService. Then, we’ll send some requests to cause the AppService to error, and trigger an alert. While you are only causing one type of error on the AppService, organizations have alerts configured for all types of errors, so they will know very quickly if they are experiencing an outage.

## Steps
1. Create an Azure AppService
2. Create an Alert for the AppService
3. Create a condition to alert if there is more than 1 404 error in 5 minutes
4. Configure the alert to be sent via email--you may need an action group for this. Name the alert intuitively, then Save.
5. Create a few 404 errors by visiting the URL of the AppService, and typing /gggg or some other random characters.
You should receive an alert to your email.