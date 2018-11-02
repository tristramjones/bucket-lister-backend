# BucketList backend
This is interactive travel and adventure planner for those with wanderlust. The user engages with the app by creating an account and clicking on the map to create custom markers. The user can then reference the map displaying their custom markers and start planning their next adventure.

## Motivation
I moved to New York City from Utah and wanted this app. Google docs, Yelp, etc. can only get you so far. I wanted a way to record information about things I was interested in and have it all displayed on a map.

## Tech used
Rails
OAuth
JWT

## Features
- Custom JSON renderings in controllers
- Secure authorization using JWT handled by auth and application controllers
- Validations for each creation of model instances

## Setup
1. Clone this repo and run `bundle exec`.
2. Once this has completed and all dependencies are installed, run `rails s`.
3. Visit [http://localhost:3000/](http://localhost:3000/). You'll only see the rails welcome screen but this indicates that the http request was successful and the API is ready to serve the client.
4. Visit the [BucketList client](https://github.com/tristramjones/bucket-lister-frontend) and follow the setup instructions to get the frontend running.

## Contribute
Thanks for your interest in contributing to BucketList!

The following is a set of guidelines for contributing to the BucketList app backend.

### Issues
Before submitting a new issue ensure that one has not already been created by reviewing the [open issues](https://github.com/tristramjones/bucket-lister-backend/issues). If your bug is unique to the currently open issues, submit a new one [here](https://github.com/tristramjones/bucket-lister-backend/issues/new).

#### Write detailed information
Detailed information is very helpful to understand an issue.

For example:
- How to reproduce the issue, step-by-step.
- The expected behavior (or what is wrong).
- Screenshots displaying the buggy behavior.
- The operating system.

### Pull requests
Pull Requests are always welcome. Ensure that you've run `npm i` before creating an issue or submitting a pull request.
Ensure the PR description clearly describes the problem and solution. It should include:
- The operating system on which you tested.
- The relevant issue number, if applicable.
