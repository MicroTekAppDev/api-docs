## Authentication

All MicroTek API requests require authentication.

1. [Acquire an access token](#acquire-an-access-token)
2. [Use the access token to make authenticated requests](#authenticating-requests) 

### Acquire an Access Token

> Request:

```shell


curl http://idp.mclabs.com/connect/token \
     -X POST
    --h 'cache-control: no-cache' \
    --h 'content-type: application/x-www-form-urlencoded' \
    --d 'client_id: 00000000-0000-0000-0000-000000000000' \
    --d 'grant_type: client_credentials' \
    --d 'client_secret: password' \
    --d 'scope: public-api'
```
> Response:

```
200 OK
```

```json
{
    "access_token": "YOUR_TOKEN",
    "expires_in": 3600,
    "token_type": "Bearer"
}
```

Acquiring an access token is a two-step process:

1. Signup for a MicroTek developers account by contacting your account manager.
2. Call our secure token service for an access token

<api>`POST https://idp.mclabs.com/connect/token`</api>

##### Request arguments

Parameter | Type | Description
--------- | ---- | -----------
grant_type **required** | *string* | Should be "client_credentials"
client_id **required** | *string* | Your client id
client_secret **required** | *string* | Your client secret.
scope **required** | *string* | Should be "public-api"

### Authenticating Requests

All requests must be authenticated with an access token supplied in the Authorization header using the Bearer scheme. Your client may only have one active access token at a time. Acquiring a new access token will invalidate any other token you own.

The request header will look like this: **Authorization: Bearer {your_access_token}**

### Refreshing Access

To limit the window of opportunity for attackers in the event an access token is compromised, access tokens expire after a set amout of time. To gain long-lived access to your account, it’s necessary to “refresh” your access when it expires.  Refreshing an access token will invalidate the previous token, if it is still valid.


<aside class="warning">Access tokens must not be visible/available in public (widget integration code, client-side JavaScript, etc.).</aside>
