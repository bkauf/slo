export PROJECT_ID=[project-name-here]
export SERVICE_ID=[service-name-here]
export ACCESS_TOKEN=`gcloud auth print-access-token`



#List all services
#curl  --http1.1 --header "Authorization: Bearer ${ACCESS_TOKEN}" https://monitoring.googleapis.com/v3/projects/${PROJECT_ID}/services


#List All SLOs for a service
#curl -d @sre.json -H "Authorization: Bearer $ACCESS_TOKEN" -H 'Content-Type: application/json' -X POST https://monitoring.googleapis.com/v3/projects/${PROJECT_ID}/services/${SERVICE_ID}/serviceLevelObjectives
#Create Service
#curl  --http1.1 --header "Authorization: Bearer ${ACCESS_TOKEN}" --header "Content-Type: application/json" -X POST -d @create-service.json https://monitoring.googleapis.com/v3/projects/${PROJECT_ID}/services?service_id=${SERVICE_ID}

#Create SLO
curl  --http1.1 --header "Authorization: Bearer ${ACCESS_TOKEN}" --header "Content-Type: application/json" -X POST -d @slo-config.json https://monitoring.googleapis.com/v3/projects/${PROJECT_ID}/services/${SERVICE_ID}/serviceLevelObjectives


#list specific SLO
#curl  --http1.1 --header "Authorization: Bearer ${ACCESS_TOKEN}" https://monitoring.googleapis.com/v3/projects/${PROJECT_ID}/services/${SERVICE_ID}/serviceLevelObjectives/${SLO_ID}
