# README
![example event parameter](https://github.com/netng/API-Rails-CRUD-Basic-with-test/workflows/CI/badge.svg?event=push)

This is basic Rails API only CRUD.

## Testing Gem
* rspec_rails
* factory_bot_rails
* faker

## Run testing
`rspec`

## Database
I use PostgreSQL, or freely to use your preferences database if you want to try source code from this repo.

## CI/CD
This repo deployed to Heroku using github action CI/CD. Its use Deploy to Heroku github action.

## Live Demo
<strong>API URL</storng><br />
https://secret-river-45854.herokuapp.com

### create
```
method: POST
endpoint: /api/v1/posts
content-type: application/json

body:

{
    "post": {
        "title": "title",
        "content": "this is just a test content"
    }
}

response:

{
    "id": 1,
    "title": "title",
    "content": "this is just a test content",
    "created_at": "2022-04-20T08:04:04.777Z",
    "updated_at": "2022-04-20T08:04:04.777Z"
}
```

### index
```
method: GET
endpoint: /api/v1/posts

response:
[
    {
        "id": 1,
        "title": "title",
        "content": "this is just a test content",
        "created_at": "2022-04-20T08:04:04.777Z",
        "updated_at": "2022-04-20T08:04:04.777Z"
    },
    {
        "id": 2,
        "title": "second post",
        "content": "this just an example second post",
        "created_at": "2022-04-20T08:35:22.002Z",
        "updated_at": "2022-04-20T08:35:22.002Z"
    }
]
```

### show 
```
method: GET
endpoint: /api/v1/posts/:id


response:

{
    "id": 1,
    "title": "title",
    "content": "this is just a test content",
    "created_at": "2022-04-20T08:04:04.777Z",
    "updated_at": "2022-04-20T08:04:04.777Z"
}
```

### delete
```
method: DELETE
endpoint: /api/v1/posts/:id

response:
    status: 204 No Content


```

