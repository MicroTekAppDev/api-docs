## API Errors

> Request:

```shell

curl https://:environmentUri/api/v1/customer/courses?page=1&pageSize=X
    --x GET
    --h 'authorization: Bearer your-account-token'
```

> Response:

```
400 Bad Request
```

```json
{
    "code": 6,
    "message": "Model not valid",
    "errors":
    [
        "pageSize: The value 'X' is not valid for 'pageSize'."
    ]
}
```

In addition to conventional HTTP response codes the API returns an error object to indicate exceptions. The error object includes additional information on the exact nature of the exception in the response body.

Error&nbsp;Code | Description
---------- | -----------
 1 | Server Error: Server error occurred while processing your request.
 2 | Server Not Available: Server is not available to process your request.
 3 | Not Authorized: You are not authorized to perform requested action.
 4 | Not Authenticated: You are not authenticated to perform requested action.
 5 | Model Not Provided: You did not provide a required model for requested action.
 6 | Model Not Valid: The model you provided is not valid for requested action. See Errors for details.
 7 | Value Not Provided: You did not provide a required value for requested action.
 8 | Value Not Valid: The value you provided is not valid for requested action. See Errors for details.
 9 | Record Not Provided: You did not provide a required record for requested action.
10 | Record Not Found: The record you queried was not found.
11 | Record Not Active: The record you provided is not active.
12 | Record Not Valid: The record you provided is not valid for requested action. See Errors for details.