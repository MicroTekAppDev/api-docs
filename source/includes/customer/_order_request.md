## Order Request

### Create - Room Rental


> Request:

```shell
curl https://{{environment}}/api/v1/customer/order/request/room-rental/create
     -X POST
     -d '{
            "courseKey": "68ce00f1-7d2c-4cbc-b401-2f419a7caf53",
            "purchaseOrderNumber": "99999",
            "referenceCode": "99999",
            "eventStartDate": "1/1/2018",
            "eventEndDate": "1/1/2018",
            "eventStartTime": "08:00:00",
            "eventEndTime": "17:00:00",
            "studentQuantity": 16,
            "computerQuantity": 1,
            "includeLunch": true,
            "includeVtrEquipment": false,
            "location":
            {
                "city":"Chicago",
                "region":"IL",
                "country":"US"
            },
            "instructorContact":
            {
                "firstName": "John",
                "lastName": "Doe",
                "email": "John@Doe.com"
            },
            "comments": "Additional note"
        }'
     -H 'content-type: application/json'
     -H 'authorization: Bearer your-account-token'
```
> Response:

```
201 CREATED
```

```json
{
    "requestKey": "00000000-0000-0000-0000-000000000000",
}
```

<api>`POST /v1/customer/order/request/room-rental/create`</api>

Creates a new room rental order request. The response body will include the order request's `requestKey`, which can be used to query a request for status updates.

#### Attributes
Parameter | Type | Description
--------- | ---- | -----------
**courseKey** | *guid* | The course unique identifier
**purchaseOrderNumber** | *string* | Your purchase order number
**referenceCode** | *string* | Provides a way to map our data with yours
**eventStartDate** | *date* | Date when event starts
**eventEndDate** | *date* | Date when the event ends
**eventStartTime** | *timespan* | The start time of the event
**eventEndTime** | *timespan* | The end time of the event
**studentQuantity** | *int* | The number of students attending the event
**computerQuantity** | *int* | The number of computers required
**includeLunch** | *boolean* | Should lunch be provided
**includeVtrEquipment** | *boolean* | Will this evenet make use of MiroTek's VTR offering
**location** | *object* | Contains an `object` ([see location](#location))
**instructorContact** | *object* | Contains an `object` ([see instructor](#customer-api-order-create-room-rental))
**comments** | *string* | Additional comments that MircroTek should be aware of

#### Location Object Attributes
Parameter | Type | Description
--------- | ---- | -----------
**city** | *string* | City
**region** | *string* | State, Province or Region
**country** | *string* | Country

#### Instructor Object Attributes
Parameter | Type | Description
--------- | ---- | -----------
**firstName** | *string* | First Name
**lastName** | *string* | Last Name
**email** | *string* | Email Address

### Create - Virtual Lab

> Request:

```shell
curl https://{{environment}}/api/v1/customer/order/request/virtual-lab/create
     -X POST
     -d '{
            "courseKey": "68ce00f1-7d2c-4cbc-b401-2f419a7caf53",
            "purchaseOrderNumber": "99999",
            "referenceCode": "99999",
            "eventStartDate": "10/30/2017",
            "eventEndDate": "10/30/2017",
            "eventStartTime": "08:00:00",
            "eventEndTime": "17:00:00",
            "eventTimeZoneKey": "3e792b8f-a706-4a52-bfa1-be291c811c92",
            "studentQuantity": 16,
            "instructorQuantity": 1,
            "observerQuantity": 1,
            "instructorContact":
            {
                "firstName": "John",
                "lastName": "Doe",
                "email": "John@Doe.com"
            },
            "preferredDataCenter":
            {
                "timeZoneKey": "",
                "location":
                {
                    "city":"Chicago",
                    "region":"IL",
                    "country":"US"
                }
            },
            "virtualMachineRententionInDays": 0,
            "comments": "Additional note"
        }'
     -H 'content-type: application/json'
     -H 'authorization: Bearer your-account-token'
```
> Response:

```
201 CREATED
```

```json
{
    "requestKey": "00000000-0000-0000-0000-000000000000",
}
```
<api>`POST /v1/customer/order/request/virtual-lab/create`</api>

Creates a new virtual lab order request. The response body will include the order request's `requestKey`, which can be used to query a request for status updates.

#### Attributes
Parameter | Type | Description
--------- | ---- | -----------
**courseKey**<span class="req-attrb">required</span> | *guid* | The course unique identifier
**purchaseOrderNumber** | *string* | Purchase order number
**referenceCode** | *string* | Provides a way to map our data with yours
**eventStartDate**<span class="req-attrb">required</span> | *date* | Date when event starts
**eventEndDate**<span class="req-attrb">required</span> | *date* | Date when the event ends
**eventStartTime**<span class="req-attrb">required</span> | *timespan* | The start time of the event
**eventEndTime**<span class="req-attrb">required</span> | *timespan* | The end time of the event
**eventTimeZoneKey**<span class="req-attrb">required</span> | *guid* | Timezone key.  ([see time zone](#))
**studentQuantity**<span class="req-attrb">required</span> | *int* | The number of students attending the event
**instructorQuantity**<span class="req-attrb">required</span> | *int* | The number of computers required
**observerQuantity**<span class="req-attrb">required</span> | *int* | The number of computers required
**instructorContact** | *object* | Contains an `object` ([see instructor](#))
**preferredDataCenter** | *object* | Contains an `object` ([see preferred data center](#))
**virtualMachineRententionInDays** | *int* | Post event access (30 day increments)
**comments** | *string* | Additional comments that MircroTek should be aware of

#### Preferred Data Center Object Attributes

<aside class="notice">Heads Up!  This information is used to select a data cetner based on a geographic area.  You can provide either a **time zone** or a **location**.  If both are provided, the location properties will be used.</aside>

Parameter | Type | Description
--------- | ---- | -----------
**timeZoneKey**<span class="req-attrb">see note above</span> | *guid* | Time zone key [see time zone]()
**location**<span class="req-attrb">see note above</span> | *object* | Contains an `object` ([see location](#))


#### Location Object Attributes
Parameter | Type | Description
--------- | ---- | -----------
**city** | *string* | City
**region** | *string* | State, Province or Region
**country** | *string* | Country

#### Instructor Object Attributes
Parameter | Type | Description
--------- | ---- | -----------
**firstName** | *string* | First Name
**lastName** | *string* | Last Name
**email** | *string* | Email Address

### List

> Request:

```shell
curl https://{{environment}}/api/v1/customer/order/request/list
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
        "pageRecords": 11,
        "totalPages": 1,
        "totalRecords": 11,
        "results": [
            {
                "requestKey": "00000000-0000-0000-0000-000000000000",
                "requestNumber": 36810,
                "statusCode": 4,
                "statusName": "Cancelled",
                "statusReason": null,
                "statusNote": null,
                "orderKey": null,
                "orderNumber": null,
                "courseKey": "00000000-0000-0000-0000-000000000000",
                "courseName": "Demo Course",
                "requestedOn": "2017-10-16T11:28:05.27",
                "referenceCode": null,
                "hasRoomRental": false,
                "hasVirtualLab": true
            }
        ]
    },
    "status": "Ok"
}
```
<api>`POST /api/v1/customer/order/request/list`</api>

Returns a list of order requests.

#### Attributes
Parameter | Type | Description
--------- | ---- | -----------
**page** | *int* | Page number
**pageSize** | *int* | Number of records to return

### Get

> Request:

```shell
curl https://{{environment}}/api/v1/customer/order/request/get
     -X POST
     -d '{
            "requestKey": "00000000-0000-0000-0000-000000000000"
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
        "requestKey": "00000000-0000-0000-0000-000000000000",
        "requestNumber": 36810,
        "statusCode": 4,
        "statusName": "Cancelled",
        "statusReason": null,
        "statusNote": null,
        "orderKey": null,
        "orderNumber": null,
        "courseKey": "00000000-0000-0000-0000-000000000000",
        "courseName": "Centrify Advanced Track",
        "requestedOn": "2017-10-16T11:28:05.27",
        "requestedBy": "Joe Rogers",
        "purchaseOrderNumber": null,
        "referenceCode": null,
        "hasRoomRental": false,
        "hasVirtualLab": true,
        "roomRental": null,
        "virtualLab": {
            "serviceKey": null,
            "serviceNumber": null,
            "timeZoneKey": "00000000-0000-0000-0000-000000000000",
            "timeZoneName": "(GMT-07:00) Mountain Time (US & Canada)",
            "studentQuantity": 8,
            "instructorQuantity": 1,
            "sessions": [
                {
                    "specificationKey": "00000000-0000-0000-0000-000000000000",
                    "specificationName": "Centrify Advanced Track",
                    "eventStartDate": "2017-10-23T00:00:00",
                    "eventEndDate": "2017-10-24T00:00:00",
                    "eventStartTime": "08:00:00",
                    "eventEndTime": "17:00:00"
                }
            ]
        }
    },
    "status": "Ok"
}
```
<api>`POST api/v1/customer/order/request/get`</api>

Returns a single order request.

#### Attributes
Parameter | Type | Description
--------- | ---- | -----------
**requestKey** | *guid* | Key

### Cancel

> Request:

```shell
curl https://{{environment}}/api/v1/customer/order/request/cancel
     -X POST
     -d '{
            "requestKey": "00000000-0000-0000-0000-000000000000"
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
    "status": "Ok"
}
```
<api>`POST /api/v1/customer/order/request/cancel`</api>

Cancels an order request

#### Attributes
Parameter | Type | Description
--------- | ---- | -----------
**requestKey** | *guid* | Key
