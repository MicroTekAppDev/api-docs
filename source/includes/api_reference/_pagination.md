## Pagination
Endpoints which enumerate objects makes use of paginated results.

##### Request arguments
Parameter | Type | Description
--------- | ---- | -----------
page | *int* | Current page number of returned records. Default to 1.
pageSize | *int* | The amount of records returns within a single API call. Defaults to 30. Max of 300.
