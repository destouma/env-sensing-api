# Environmental Sensing  API

Basic Ruby On Rails API to store sensor readings

Database: posgresql

Using the folowing gems
- annotate
- rswag
- rails_admin


Development:
============
``` shell script
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
```


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

Production:
============

3 containers:
* app : ruby on rails app, using PUMA
* db  : postgres
* web : nginx

In the folder:
```shell script
$ sudo docker-compose up -d
$ sudo docker-compose exec app bash
```

In the app container:
```shell script
# rake db:create
# rake db:migrate
# rake db:seed
```

The nginx server will listen on port 80.