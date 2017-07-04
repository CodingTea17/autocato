# Contributing to Autocato

To find something to work on, check out what [issues are open](https://github.com/crawfoal/autocato/issues), as well as what the [project focus](https://github.com/crawfoal/autocato#where-the-project-is-headed) currently is.

Here are some steps to open a pull request:

1. Claim an issue by commenting on it (if one doesn't exist, open one).
2. Fork and clone the repo.
3. Run `./bin/setup`.
4. Run the specs and make sure everything passes.
   - `./bin/rspec` will use spring
   - `bundle exec rake spec` won't use spring and will report test coverage
   - `bundle exec guard` will watch for file modifications and run corresponding specs
5. Add one or more specs for your changes.
6. Make your changes.
7. Make sure your specs pass and that RuboCop doesn't report any new issues.
8. Push to your fork and submit a pull request. Include the issue number in the PR description (e.g. "Resolves #19").

After you open a PR, the following things happen:

1. Heroku creates a review app, which you can access at https://autocato-staging-pr-###.herokuapp.com/ (replace ### with the PR number).
2. Code Climate analyses the changes and reports on changes in test coverage and issues found via linters (e.g RuboCop).
3. Semaphore will build the project with your changes (if the changes can be merged). See the results [here](https://semaphoreci.com/amandadolan/autocato).

You can view the producation app at https://autocato.herokuapp.com/ (for now).
