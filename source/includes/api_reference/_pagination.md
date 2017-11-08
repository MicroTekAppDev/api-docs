## Pagination

Requests that return multiple items will be paginated to 30 items by default. You can specify further pages with the **page** parameter. For some resources, you can also set a custom page size up to 250 with the **page_size** parameter. Note that for technical reasons not all endpoints respect the **page_size** parameter.

<api>
    GET /v1/customer/orders?page=2&page_size=100
</api>

Note that page numbering is 1-based and that omitting the **page** parameter will return the first page.

Parameter | Type  | Description
--------- | ----  | -----------
page *optional* | *int* | Page number to return (defaults to 1)
page_size *optional* | *int* | Number of records to return per page (defaults to 30, maximum of 250)