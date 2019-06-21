# anypoint-statistics-service
Api which retrieve statistics of deployed mule apps, scheduler and anypointMQ for given org and env. 


## How to run
Configure `anypoint-statistics-DEV-config.yaml` with the credentials and env. If you have
AnypointMQ then `region` is required to retrieve MQ stats.

```
  user: "<<user-name>>"
  password: "<password>"
  environmentName: "Sandbox"
  organizationName: "<<org-name>>"
  region: "us-east-1" #Required for AnypointMQ stats
```

Api is using basicAuth. In order to run you will have to pass user/password. Below are the credentials
   ```
   Username: admin
   Password: admin

```
`GET https://localhost:8082/api/v1/statistics`

## Sample Response:
```
{
    "apps": [
        {
            "dateTime": "2019-06-21T21:57:20.568Z",
            "appName": "employee-dev-api",
            "memoryUsed": "28.15%",
            "maxMemory": "0.45GB",
            "cpuUsed": "0%",
            "cores": "0.1 vCores"
        }
    ],
    "anypointMQ": [],
    "schedulers": [
        {
            "appName": "employee-dev-api",
            "id": "5ceb740c61eee312fc3d34b4_load-and-cache-data_load-and-cache-data",
            "flow": "load-and-cache-data",
            "name": "load-and-cache-data_Scheduler",
            "lastRun": "2019-06-21T13:04:21.974Z",
            "enabled": true,
            "status": "IDLE",
            "schedule": {
                "timeUnit": "hours",
                "period": 10
            }
           
        }
    ]
}

```
## contributors:
  - Amit Kothari
  - Ashish Kharbanda
  - Imtiyaz Qureshi
