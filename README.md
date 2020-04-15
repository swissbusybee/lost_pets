# Evening course

## Statement

Let’s create a Rails app to report pets you found on the street!

## User Stories

- [ ] As a user I can see all found pets
- [ ] As a user I can see details about one found pet (when and where it was found)
- [ ] As a user I can add a pet I found
- [ ] As a user I can update a pet
- [ ] As a user I can delete a pet

## CRUD Action

| CRUD |  HTTP verb |
|------|------------|
| C    | POST       |
| R    | GET        |
| U    | PATCH      |
| D    | DELETE     |

## Routes

| HTTP verb | Controller action | ActiveRecord method |
|-----------|-------------------|---------------------|
| GET       | index             | all                 |
| GET       | show              | find(id)            |
| GET       | new               | new(attributes)     |
| POST      | create            | create(attributes)  |
| GET       | edit              | find(id)            |
| PATCH     | update            | update(attributes)  |
| DELETE    | destroy           | destroy             |


## Pseudo-code

- Create Model
- Create routes
- Create Controller
- Crate View

## Model Pet.rb

- a name
- the address it was found at
- a species (string)
- the date it was found on

## Validations

```ruby
validates :name, presence: true
validates :species, inclusion: { in: %w(dog cat rabbit snake turtle) }
```

## Validations Refacto

```ruby
SPECIES = %w(dog cat rabbit snake turtle)
validates :species, inclusion: { in: SPECIES }
```
