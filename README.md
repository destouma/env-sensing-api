# Environmental Sensing  API

Basic Ruby On Rails API to store sensor readings

Database: posgresql

Using the folowing gems
- annotate
- rswag
- rails_admin


Assuming the server is running on localhost, port 3000

API doc: 
<br> http://localhost:3000/api-docs/index.html

Rails admin: 
<br>http://localhost:3000/admin/
<br></br>
```
curl --location --request POST 'http://localhost:3000/api/v1/sensor_readings.json' \
--header 'Content-Type: application/json' \
--header 'Content-Type: application/json' \
--data-raw '{
    "sensor_uuid": "123-123-000-002",
    "sensor_value": 102300
}'
```
<br></br>
```
curl --location --request POST 'http://localhost:3000/api/v1/device_readings.json' \
--header 'Content-Type: application/json' \
--data-raw '{
	"device_uuid" : "123-123-000-000",
	"sensor_readings" :
		[
			{
				"sensor_uuid": "123-123-000-001",
    			"sensor_value": 2500
			},
			{
				"sensor_uuid": "123-123-000-002",
    			"sensor_value": 102300
			},
			{
				"sensor_uuid": "123-123-000-003",
    			"sensor_value": 100
			}
		]
    
}'
```