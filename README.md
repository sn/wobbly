## Wobbly: Simple Date Token Parser for Ruby

Wobbly is a Ruby library that parses a given time-based token string to calculate a date in the future. It's lightweight and intuitive, perfect for adding flexible time calculations to your Ruby projects.

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/underwulf)

Requirements
-----------------
Ruby 2.0.0 or higher is recommended.

Installation
-----------------
Install the [gem](https://rubygems.org/gems/wobbly) with:

```bash
gem install wobbly
```

Getting Started
-----------------

```ruby
require 'wobbly'

Wobbly.in('1h2m') # => 2017-11-27 19:58:44 +0200
```

Available Tokens
-----------------
Wobbly supports the following tokens, which can be combined in any order:

- `s` - seconds
- `m` - minutes
- `h` - hours
- `D` - days
- `W` - weeks
- `M` - months (approximated as 30 days)
- `Y` - years (approximated as 365 days)

Examples
-----------------
Here are some usage examples demonstrating how Wobbly interprets different token strings:

```ruby
Wobbly.in('1h2m8s')    # Adds 1 hour, 2 minutes, and 8 seconds to the current time
Wobbly.in('5Y')        # Adds 5 years to the current time
Wobbly.in('3Y8m')      # Adds 3 years and 8 minutes to the current time
Wobbly.in('3Y8M2W1D')  # Adds 3 years, 8 months, 2 weeks, and 1 day to the current time
```

Running the tests
-----------------
To test Wobbly, run the following command:

```bash
rake test
```

License
-----------------
Please see [LICENSE](https://github.com/sn/Wobbly/blob/master/LICENSE) for licensing details.

Author
-----------------
[github.com/sn](https://github.com/sn) 
