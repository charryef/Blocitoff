# [Blocitoff](https://cfuller-blocitoff.herokuapp.com/)
**Blocitoff** is the first backend specialization that I chose for my Full Stack Web Development course at [Bloc](https://www.bloc.io/). It is an application, built with Ruby on Rails, that allows users to keep their to-do lists manageable by creating self-destructing ones. If the to-do item is not important enough to be completed in seven days, it gets automatically deleted.

This app is deployed on Heroku: https://cfuller-blocitoff.herokuapp.com/
The source code is here on Github: https://github.com/charryef/blocitoff

## Blocitoff Features
- Users are able to **sign up** for a free account by providing a user name, password and email.
- Users are able to **sign in and out** of Blocitoff.
- Users are able to **see** their profile page.
- Users are able to **create** multiple to-do items.
- Developers are able to **seed** the development database automatically with users and to-do items.
- Users are able to **mark** to do items as complete and have them deleted.
- Users are able to **see** how old a to-do item is.
- Users are able to have their to-dos **automatically deleted** seven days after their creation date.

## Setup and Configuration
- Ruby on Rails 5.2.2
- Bootstrap
- `Devise` gem for authentication
- `Faker` gem for generating fake data
- Ajax for deleting to-do items without reloading the page
