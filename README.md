[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)

# SHOWD App

This is a [modified](https://github.com/CrashLearner/BroadwayApp) Broadway look alike web app that allows users to add movies and series (with full CRUD ability), assign to Categories (Genres of the movies and series)
and also Review using a 5-star rating system (w/ Average Ratings as well).

### What has changed?
1. Uploading of images using [Active Storage](https://github.com/rails/rails/tree/master/activestorage) instead of [Paper Clip](https://github.com/thoughtbot/paperclip) (including validations of attachments).
2. Adding a favicon using [RealFaviconGenerator](https://realfavicongenerator.net/).
3. More [CSS](https://github.com/nyamburanjuguna/showd/blob/master/app/assets/stylesheets/application.css.scss) styling.
4. The [name](https://github.com/nyamburanjuguna/showd) too.

## Getting started

### Clone the repository

```shell
git clone https://github.com/joancodes/showd.git
cd showd 
```
### Check your ruby and rails versions

``` shell
ruby -v 
rails -v
```
The ouput should start with something like `ruby 3.1.0` `Rails 7.0.2.2`

If not, install the right ruby and rails versions using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

``` shell
rbenv install 3.1.0
gem install rails -v 7.0.2.2
```

### Install dependencies

Using [Bundler]() and [Yarn]()

```shell
bundle && yarn
```
In use `Bundler version 2.3.3` and yarn -v `1.22.17`

### Initialize the database 

``` shell
rails db:create db:migrate db:seed
```
Note: this application is using the [default](https://github.com/sparklemotion/sqlite3-ruby) ruby database

## Serve 

``` shell
rails s
```
This will generate auto-code to start the server

``` shell
=> Booting Puma
=> Rails 7.0.2.2 application starting in development
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.6.2 (ruby 3.1.0-p0) ("Birdie's Version")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 20007
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop
```
Now open your browser and type the following `http://localhost:3000` to load the application.

