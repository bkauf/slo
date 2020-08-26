# DORA GCP Dashboard and SLO API
These files contain code to serve as a template for creating SLOs and Services in Google Cloud via the API as well as a template to build a DORA
metrics dashboard in Google Cloud Operations. View the LeadTime directory for the Cloud Builder that generates the nessessary information to the logs.
Make sure the gcloud SDK is installed prior to running these scripts
[Google Cloud SDK](https://cloud.google.com/sdk)

#### Edit the project name and service name if available in the slo-functions.sh
```
export PROJECT_ID=[project-name-here]
export SERVICE_ID=[service-name-here]
```
There is a dashboard json file that you can use the Cloud Operations API to load by removing the comment to the curl command
under the Create Dashboard text

```
#Create Dashboard
#curl -d @dora-dashboard.json -H "Authorization: Bearer $ACCESS_TOKEN" -H 'Content-Type: application/json' -X POST https://monitoring.googleapis.com/v1/projects/${PROJECT_ID}/dashboards
```


#### Execute the associated Curl Commands to run the API
```
./slo-functions.sh
```

#### Dashboard
Remember to follow the blog instructions on setting up your custom metrics
![GitHub Logo](/doradashboard2.png)