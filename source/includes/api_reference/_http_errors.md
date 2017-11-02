## HTTP Errors

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

The MicroTek API uses conventional HTTP response codes to indicate errors, and includes more detailed information on the exact nature of an error in the HTTP response.

HTTP Code | Description
--------- | -----------
400 | Bad Request -- Your request sucks.
401 | Unauthorized -- Your API key is wrong.
403 | Forbidden -- The resource requested is forbidden.
404 | Not Found -- The specified resource could not be found.
405 | Method Not Allowed -- You tried to access a resource with an invalid method.
406 | Not Acceptable -- You requested a format that isn't json.
410 | Gone -- The resource requested has been removed from our servers.
418 | I'm a teapot.
429 | Too Many Requests -- You're requesting too much! Slow down!
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.