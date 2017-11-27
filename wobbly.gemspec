Gem::Specification.new do |s|
  s.name        = "wobbly"
  s.version     = "0.0.1"
  s.date        = "2017-11-27"
  s.summary     = "Wobbly is an easy to use token type date parser in Ruby"
  s.description = "Wobbly is an easy to use token type date parser in Ruby that allows you easily parse short dates such as 1h2m"
  s.authors     = ["Sean Nieuwoudt"]
  s.email       = "sean@isean.co.za"
  s.files       = ["lib/wobbly.rb"]
  s.license     = "GPL-3.0"
  s.homepage    = 'https://isean.co.za'
  s.executables << 'wobbly'

  s.add_development_dependency 'minitest', '~> 5.7', '>= 5.7.0'
  s.add_development_dependency 'rake', '~> 10.4', '>= 10.4.2'
end
