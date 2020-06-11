 Zela-Fan-Page - RoR Capstone Project

> This project it was built on top of my knowledge of RoR.

(![screenshot](/app/assets/images/screen2.png)

## What it does

Its a game Legend of Zelda community page.

*As a guest user:*

- You will be able to create account/log in.
- You can see only “Sign in” and “Sign out” page.

*As a logged-in user:*

- You will be able to see all users list.
- You will be able to see selected user page with their user name and all Posts written by them (the most recent posts on the top).
- You will be able to follow a user.
- You will see a button “Follow” next to the name of user who your are not following yet - on both users’ list and single user page.
- You will be able to create new Post (text only).

- You will be able to add comments to Posts.
- You will be able to see “Timeline” page with Posts (with number of  comments) written by you and all the users you are following (the most recent posts on the top).
- Timeline page is the root page of the app.

## Built With

- Ruby v2.6.5
- Ruby on Rails v5.2.4

*Gems used:*

- Devise (for user authentication)
- Simple_form
- Omniauth
- Omniauth - Facebook
- Faker
- Will Paginate
- Gems used for testing:
  - Capybara
  - Selenium webdriver
  - Chromedriver helper
  - Database cleaner
  - Rspec-rails
  - Shoulda matchers

- Rubocop

## Live Demo

[Live Demo Link](https://zelda-community.herokuapp.com/)

## Video Presentation

[Video Presentation](https://www.loom.com/share/dee00d81d0af4a46a8eb4bcbc651f663)

## Getting Started

To get a local copy up, clone it and running follow these simple example steps.

### Prerequisites

- Ruby: 2.6.5
- Rails: 5.2.3
- Postgres: >= 9.5

### Setup

Install gems with:

``` bash
bundle install
```

Setup database with:

``` bash
   rails db:create
   rails db:migrate
```

Create users with:


### Usage

Start server with:

``` bash
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

``` bash
    rpsec
```

### Deployment

- App deployed in Heroku.

## Author

👤 **Kelly Booster**

- Github: [@kelibst](https://github.com/kelibst)
- Twitter: [@keli_booster](https://twitter.com/keli_booster)
- Linkedin: [Kekeli (Jiresse) Dogbevi
](https://www.linkedin.com/in/kekeli-dogbevi-958272108/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome! Start by:

- Forking the project.
- Cloning the project to your local machine.
- cd into the project directory.
- Run git checkout -b your-branch-name.
- Make your contributions.
- Push your branch up to your forked repository.
- Open a Pull Request with a detailed description to the development branch of the original project for a review.

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse

## 📝 License

No license.