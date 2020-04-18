# SHOWD App - [Link to App](https://www.heruko.com)

This is a [modified](https://github.com/CrashLearner/BroadwayApp) web app that allows users to add movies and series (with full CRUD ability), assign to Categories (Genres of the movies and series)
and also Review using a 5-star rating system (w/ Average Ratings as well).

### What has changed?
1. Uploding of images using [Active Storage](https://github.com/rails/rails/tree/master/activestorage) instead of [Paper Clip](https://github.com/thoughtbot/paperclip).
2. Adding a favicon using [RealFaviconGenerator](https://realfavicongenerator.net/).
3. More [CSS](https://github.com/nyamburanjuguna/showd/blob/master/app/assets/stylesheets/application.css.scss) styling.


## Getting started

### Clone the repository

```shell
git clone https://github.com/nyamburanjuguna/showd.git
cd showd 
```
### Check your ruby and rails versions

``` shell
ruby -v 
rails -v
```
The ouput should start with something like `ruby 2.6.0` `Rails 5.2.4.2`

If not, install the right ruby and rails versions using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

``` shell
rbenv install 2.6.0
gem install rails -v 5.2.4.2
```

### Install dependencies

Using [Bundler]() and [Yarn]()

```shell
bundle && yarn
```
In use `Bundler version 2.1.4` and yarn -v `1.22.4`

### Initialize the database 

Note: this application is using the [default](https://github.com/sparklemotion/sqlite3-ruby) ruby database

``` shell
rails db:create db:migrate db:seed
```

## Serve 

``` shell
rails s
```
This will generate auto-code to start the server

``` shell
=> Booting Puma
=> Rails 5.2.4.2 application starting in development
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.12.4 (ruby 2.6.0-p0), codename: Llamas in Pajamas
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop
```
Now open your browser and type the following `http://localhost:3000` to load the application.

## Deploy

