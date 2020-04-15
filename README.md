# Evening course

## Reminder about CRUD Action

| CRUD |  HTTP verb |
|------|------------|
| C    | POST       |
| R    | GET        |
| U    | PATCH      |
| D    | DELETE     |

## Reminder about Routes

| HTTP verb | Controller action | ActiveRecord method |
|-----------|-------------------|---------------------|
| GET       | index             | all                 |
| GET       | show              | find(id)            |
| GET       | new               | new(attributes)     |
| POST      | create            | create(attributes)  |
| GET       | edit              | find(id)            |
| PATCH     | update            | update(attributes)  |
| DELETE    | destroy           | destroy             |

## Statement / Goal

Let’s create a Rails app to report pets you found on the street!

## User Stories

- [x] As a user I can see all found pets
- [x] As a user I can see details about one found pet (when and where it was found)
- [x] As a user I can add a pet I found
- [ ] As a user I can update a pet
- [ ] As a user I can delete a pet

## Coding steps

- Create Model
- Create Routes
- Create Controller
- Create View

## Model Pet.rb

- name
- address it was found at
- species (string)
- date it was found on

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
