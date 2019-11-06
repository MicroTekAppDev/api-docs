## Basics

The Attune API is designed according to REST principles.

The API accepts JSON in request bodies and requires that the content-type: application/json header be specified for all such requests. The API will always respond with an object. Depending on context, resources may be returned as single objects or as arrays of objects, nested within the response object.

The API also facilitates cross-origin resource sharing so that it can be called from a web application.