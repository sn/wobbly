require '../lib/wobbly'

puts "Basic Examples:\n\n"

puts "3 seconds from now: #{Wobbly.in('3s')}"
puts "5 minutes from now: #{Wobbly.in('5m')}"
puts "1 hour from now: #{Wobbly.in('1h')}"
puts "6 days from now: #{Wobbly.in('6D')}"
puts "12 months from now (approx. 1 year): #{Wobbly.in('12M')}"
puts "1 year from now: #{Wobbly.in('1Y')}"
puts "8 weeks from now: #{Wobbly.in('8W')}"
puts "2 months from now (approx. 60 days): #{Wobbly.in('2M')}"

puts "\nCombination Examples:\n\n"

puts "1 hour, 12 minutes, and 8 seconds from now: #{Wobbly.in('1h12m8s')}"
puts "12 years and 20 seconds from now: #{Wobbly.in('12Y20s')}"
puts "12 years, 3 weeks, and 6 hours from now: #{Wobbly.in('12Y3W6h')}"
