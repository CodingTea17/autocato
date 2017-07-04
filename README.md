[![Build Status](https://semaphoreci.com/api/v1/amandadolan/autocato/branches/master/badge.svg)](https://semaphoreci.com/amandadolan/autocato) [![Code Climate](https://codeclimate.com/github/crawfoal/autocato/badges/gpa.svg)](https://codeclimate.com/github/crawfoal/autocato) [![Test Coverage](https://codeclimate.com/github/crawfoal/autocato/badges/coverage.svg)](https://codeclimate.com/github/crawfoal/autocato/coverage)

# An Intro to Autocato for Developers

## Welcome
Hi there! This project is just getting started. Currently I just have basic user authentication set up (via Devise). I'd love your help with developing this app!

## Getting Started
Before getting started, you'll need to have Ruby 2.3.1, Rails 5.0.4, and Postgres 9.6 installed on your machine. If you need help with this, check out the setup guide from [Go Rails](https://gorails.com/setup). Rather than following the last set of steps to create a new app, you'll [fork](https://help.github.com/articles/fork-a-repo/) this repo and then create a local clone to work with.

You will also need [PhantomJS](http://phantomjs.org/) installed. You can download it from that webpage, or on a Mac simply run `brew install phantomjs`.

Once you have a copy of this project on your machine, you should run `bin/setup`. At this point, it's a good idea to

1) run `bin/rspec` to make sure everything was installed properly
2) start the server and explore the app

## Where the Project is Headed
In this first round of development, I'd like to focus on the following (roughly in order):

- [X] Setup Heroku [pipelines](https://devcenter.heroku.com/articles/pipelines) (include PR review apps, do not include Heroku CI)
- [X] Setup up CI with Github, [Semaphore](https://semaphoreci.com/), and Heroku
- [X] Setup [Code Climate](https://codeclimate.com/)
- [ ] Look at the linters Code Climate is using, and consider having more than just RuboCop run after the specs
- [ ] Create contribution guidelines
- [ ] Implement some basic features:
  - [ ] Users can add bookmarks
  - [ ] Users can view a list of all of their bookmarks
  - [ ] Bookmarks are automatically sorted by date added
  - [ ] Users can sort bookmarks by title
- [ ] Create sample data for the development environment
- [ ] Document the existing code to make it approachable for other developers
- [ ] Review existing code to make sure it's clean
- [ ] Review techniques used in the Sass stuff and make sure that's the way we want to do things
- [ ] Add project to Code Triage

The main long term goal is to apply both supervised and unsupervised machine learning to automatically categorize a user's bookmarks. So they'd be able to create labels and have them automatically applied, but we'd also apply an unsupervised algorithm to help them see new insights.

Additionally, I'd like to show previews of the site rather than using the site's title. When I say "previews", I'm thinking like they have on Facebook when you share a link or message it someone.
