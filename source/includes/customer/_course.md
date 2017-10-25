## Course

### List

> Request:

```shell
curl https://{{environment}}/api/v1/customer/course/list
     -X POST
     -d '{
            "page": 1,
            "pageSize": 25
        }'
     -H 'content-type: application/json'
     -H 'authorization: Bearer your-account-token'
```
> Response:

```
200 OK
```

```json
{
    "result": {
        "page": 1,
        "pageSize": 30,
        "pageRecords": 5,
        "totalPages": 1,
        "totalRecords": 5,
        "results": [
            {
                "courseKey": "00000000-0000-0000-0000-000000000000",
                "courseName": "Sample Title",
                "courseCode": null,
                "description": null,
                "isActive": true,
                "supportsTrainingRoom": true,
                "supportsVirtualTrainingLab": true
            }
        ]
    },
    "status": "Ok"
}
```
<api>`POST /api/v1/customer/course/list`</api>

Returns a list of courses.

#### Attributes
Parameter | Type | Description
--------- | ---- | -----------
**page** | *int* | Page number
**pageSize** | *int* | Number of records to return

### Get

> Request:

```shell
curl https://{{environment}}/api/v1/customer/course/get
     -X POST
     -d '{
            "courseKey": "00000000-0000-0000-0000-000000000000"
        }'
     -H 'content-type: application/json'
     -H 'authorization: Bearer your-account-token'
```
> Response:

```
200 OK
```

```json
{
    "result": {
        "courseKey": "00000000-0000-0000-0000-000000000000",
        "courseName": "Sample Title",
        "courseCode": null,
        "description": null,
        "isActive": true,
        "supportsTrainingRoom": true,
        "supportsVirtualTrainingLab": true
    },
    "status": "Ok"
}
```
<api>`POST /api/v1/customer/course/get`</api>

Returns a single course.

#### Attributes
Parameter | Type | Description
--------- | ---- | -----------
**courseKey** | *guid* | Key

