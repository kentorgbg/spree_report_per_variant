SpreeReportPerVariant
=====================

Introduction goes here.

Installation
------------

Add spree_report_per_variant to your Gemfile:

```ruby
gem 'spree_report_per_variant'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_report_per_variant:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_report_per_variant/factories'
```

Todo
-----
* List reports per shop when multidomain is enabled through https://github.com/spree/spree-multi-domain
* Complete feature spec 
* More defined requirements in gemspec

Requirements
------------
* Phantomjs - can be installed with e.g. macports


Copyright (c) 2014 [name of extension creator], released under the New BSD License
