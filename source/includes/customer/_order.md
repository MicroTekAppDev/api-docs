## Order

<aside class="notice">Heads Up!  To create a new order, you'll want to use our <a href="#">order request</a> API.</aside>

### List

> Request:

```shell
curl https://{{environment}}/api/v1/customer/order/list
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
        "pageSize": 25,
        "pageRecords": 25,
        "totalPages": 6,
        "totalRecords": 144,
        "results": [
            {
                "orderKey": "00000000-0000-0000-0000-000000000000",
                "orderNumber": 398165,
                "courseKey": "00000000-0000-0000-0000-000000000000",
                "courseName": "Sample Title",
                "referenceCode": null
            }
        ]
    },
    "status": "Ok"
}
```
<api>`POST /api/v1/customer/order/list`</api>

Returns a list of orders.

#### Attributes
Parameter | Type | Description
--------- | ---- | -----------
**page** | *int* | Page number
**pageSize** | *int* | Number of records to return

### Get

> Request:

```shell
curl https://{{environment}}/api/v1/customer/order/get
     -X POST
     -d '{
            "orderKey": "00000000-0000-0000-0000-000000000000"
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
    "result": { },
    "status": "Ok"
}
```
<api>`POST /api/v1/customer/order/get`</api>

Returns a single course.

#### Attributes
Parameter | Type | Description
--------- | ---- | -----------
**orderKey** | *guid* | Key

