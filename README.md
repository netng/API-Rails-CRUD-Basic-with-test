# README

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
<strong>End Point</storng><br />
https://secret-river-45854.herokuapp.com

### POST Posts
```
method: POST <br />
endpoint: /api/v1/posts <br />
content-type: application/json <br />

body:<br />

{
    "post": {
        "title": "title",
        "content": "this is just a test content"
    }
}

response:<br />
```


