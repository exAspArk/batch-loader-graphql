# README

## Run:

```
bundle install
bundle exec rake db:create db:migrate db:seed
bundle exec rails s
```

## Try:

```
curl 'http://localhost:3000/graphql' \
  -H 'Content-Type: application/json' \
  --data-binary '{"query":"{ posts { title user { name } } }"}'
```
