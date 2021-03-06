# README

# IBC-Project

  The IBC-SPro Project is an IBC routines management system.

# What it uses?

This steps are the necessary to get the
application up and running.

* Current ruby version - 2.4.2

* Current rails version - 5.1.4

* Current bundler version - 1.16.0.pre.3

* Database gem - development: sqlite3. production: pg

* Bootstrap

* Devise

* CanCanCan

* Gem update - 16/10/2017

# How do I get set up?

  To set it up on your local machine here is what you need to do. Install Ruby & Rails current versions.
  Clone this repo using the following command:

  git clone https://gitlab.com/heirian/ibc-project

  cd ibc-project

  Then resolve dependencies using bundler:

  bundle install --without production

  Run Migrations:

  rails db:migrate

  Run rails using

  rails server

# Below are the main code verification gems

  # Rubocop

    Repo: https://github.com/bbatsov/rubocop

    Setup your gemfile

    group :development, :test do
      gem 'rubocop', require: false
    end

    run

    rubocop --auto-gen-config

    It is going to generate a .rubocop-todo.yml file. Rename it to .rubocop.yml and add the following content on it

    * This is the configuration used to check the rubocop source code.
    * Check out: https://github.com/bbatsov/rubocop

    AllCops:
      TargetRubyVersion: 2.4.2

      Include:
        - '**/config.ru'
      Exclude:
        - 'vendor/**/*'
        - 'db/**/*'
        - 'db/schema.rb'
    Rails:
      Enabled: true

    Style/Documentation:
      Enabled: false

    Metrics/LineLength:
      Max: 120
    Now run rubocop and start to fix the issues, it is easier if you run rubocop -a.

  # Rubycritic

    Repo: https://github.com/whitesmith/rubycritic

    What to do:

    setup your gemfile

      group :development, :test do
        gem 'rubycritic'
      end

    run

    rubycritic

  # Brakeman

    Repo: https://github.com/presidentbeef/brakeman

    What to do:

    setup your gemfile

    group :development, :test do
      gem 'brakeman', require: false
    end

    run

    brakeman

  # BUndler audit

    Repo: https://github.com/rubysec/bundler-audit

    setup your gemfile

    group :development, :test do
      gem 'bundler-audit', require: false
    end

    run

    bundler-audit

  # Bullet

    Repo: https://github.com/flyerhzm/bullet

    setup your gemfile

    group :development do
      gem 'bullet'
    end

    Configurations go into config/environments/development.rb
