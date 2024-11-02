Gem::Specification.new do |s|
  s.name        = "wobbly"
  s.version     = "1.0.4"
  s.date        = "2024-02-11"
  s.summary     = "Wobbly is an easy to use token type date parser in Ruby"
  s.description = "Wobbly is a simple Ruby library that parses shorthand relative date and time duration strings, making it easy to specify durations like '1h2m' (1 hour, 2 minutes) or '5Y' (5 years) in a concise format."
  s.authors     = ["Sean Nieuwoudt"]
  s.email       = "sean@isean.co.za"
  s.files       = ["lib/wobbly.rb"]
  s.license     = "GPL-3.0-or-later"
  s.homepage    = 'https://github.com/sn/wobbly'
  s.executables << 'wobbly'
  
  s.required_ruby_version = '>= 2.7'
  s.add_development_dependency 'minitest', '~> 5.25'
  s.add_development_dependency 'rake', '~> 13.2.1'
end
