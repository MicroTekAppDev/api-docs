## Authentication

JSON Web Tokens (JWTs) are an industry standard authentication mechanism. The full specification is described here, and a set of supported JWT libraries for a variety of languages and platforms can be found at http://jwt.io. To summarize, a JWT is composed of a header, a payload, and a signature. The payload contains information called claims which describe the subject to whom the token was issued.

The JWT itself is transmitted via the HTTP authorization header. The token should be prefixed with “Bearer” followed by a space. For example: Bearer your-jwt.

#### Obtaining a Token

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

> Request:

```shell


curl http://localhost:5000/connect/token \
     -X POST
    --h 'cache-control: no-cache' \
    --h 'content-type: application/x-www-form-urlencoded' \
    --h 'postman-token: 5bf3baf0-04ba-cc4f-63c2-7671b739428d' \
    --d 'client_id: 7CAABBF5-464F-4AE3-AF61-D000D3A2A11D' \
    --d 'grant_type: client_credentials' \
    --d 'client_secret: password' \
    --d 'scope: public-api'
```

```csharp
var client = new RestClient("http://localhost:5000/connect/token");
var request = new RestRequest(Method.POST);
request.AddHeader("cache-control", "no-cache");
request.AddHeader("content-type", "application/x-www-form-urlencoded");
request.AddParameter("application/x-www-form-urlencoded", "client_id=7CAABBF5-464F-4AE3-AF61-D000D3A2A11D&grant_type=client_credentials&client_secret=password&scope=public-api", ParameterType.RequestBody);
IRestResponse response = client.Execute(request);
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
<api>`POST http://localhost:5000/connect/token`</api>

Returns a JWT

#### Attributes
Parameter | Type | Description
--------- | ---- | -----------
client_id **required** | *string* | Sample Text
grant_type **required** | *string* | Sample Text
client_secret **required** | *string* | Sample Text
scope **required** | *string* | Sample Text