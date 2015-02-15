***
Concerts
======================

**Concerts is an application that allows the user to track bands
and the venues associated with those bands.**
***


###Installation

Ruby v.2.2.0 was used to create this application.

To run the primary application and/or any of the included
RSpec files for testing, run either the included Gemfile
or manually install the following gems:

```ruby
rspec
shoulda-matchers
sinatra
sinatra-contrib
sinatra/reloader
sinatra-activerecord
rake
pg
```

To run the included Gemfile, enter the following statements
into the command line:
```ruby
gem install bundler
bundle
```

To run PostgreSQL, type the following into the command line
of one terminal window:
```PostgreSQL
postgres
```
To connect to the needed databases, enter the following
into the command line of another terminal window:
```
psql
```

To create the needed databases, return to the original project window
to type the following:
```
rake db:create
```


###Usage

Upon completion of the above steps in the Installation section,
open a web browser to enter the following address:

```url
localhost:4567/
```

_Enter a band name_. _Observe the results_. _Continue_....


###Known Bugs

None as of 2015-01-30.


###Contributing

1. Submit better options.

2. Please commit changes.

3. Branch!


###Author

J. TURNER


###License

MIT license
