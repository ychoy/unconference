# Unconference API
Users can add, edit, update and delete talks and associated unconferences.

## API Endpoints
Deployed on Heroku with endpoints at [https://unconf.herokuapp.com/api/unconferences](https://unconf.herokuapp.com/api/unconferences) and [https://unconf.herokuapp.com/api/talks](https://unconf.herokuapp.com/api/talks).

## Technologies
- Rails 5
- jbuilder gem
- PostgreSQL

## Bugs / Todos
- Bugs - App breaks in production, need to fix Setup controller -- superclass must be a class (module)
- TODO: Integration with IFTTT

## Deployment instructions
1. ``` git clone https://github.com/ychoy/unconference.git ```
2. ``` bundle ```
3. ``` rails db:create db:migrate db:seed ```
4. ``` rails s ```
