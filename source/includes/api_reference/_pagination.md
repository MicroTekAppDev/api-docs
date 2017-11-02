## Pagination

Requests that return multiple items will be paginated to 30 items by default. You can specify further pages with the ?page parameter. For some resources, you can also set a custom page size up to 300 with the ?pageSize parameter. Note that for technical reasons not all endpoints respect the ?pageSize parameter.

<api>
    GET /v1/customer/orders?page=2&pageSize=100
</api>

Note that page numbering is 1-based and that omitting the ?page parameter will return the first page.

Parameter | Type  | Description
--------- | ----  | -----------
page      | *int* | Current page number of returned records. Defaults to 1.
pageSize  | *int* | The amount of records returns within a single API call. Defaults to 30. Max of 300.
