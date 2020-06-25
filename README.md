## Wobbly: simple as f*** token date parser

Wobbly parses a given token into a date in the future. Simple.

Requirements
-----------------

It's recommend that you use Ruby 2.0.0 or higher.

Installation
-----------------

    gem install wobbly

Getting Started
-----------------

```ruby
require 'wobbly'

Wobbly.in('1h2m') # => 2017-11-27 19:58:44 +0200
```

Available Tokens
-----------------

Wobbly supports the following tokens and combinations of them:

- 's' seconds
- 'h' hours
- 'm' minutes
- 'D' days
- 'M' months
- 'W' weeks
- 'Y' years

Examples
-----------------

```ruby
Wobbly.in('1h2m8s')   # 1 hour, 2 minutes, 8 seconds from now
Wobbly.in('5Y')       # 5 years from now
Wobbly.in('3Y8m')     # 3 years, 8 minutes from now
Wobbly.in('3Y8M2W1D') # 3 years, 8 months, 2 weeks, 1 day
```

Running the tests
-----------------

To test the current stable version of Wobbly, simply run:

    rake test

License
-----------------

Please see [LICENSE](https://github.com/SeanNieuwoudt/Wobbly/blob/master/LICENSE) for licensing details.

Author
-----------------

[github.com/sn](https://github.com/sn) 
