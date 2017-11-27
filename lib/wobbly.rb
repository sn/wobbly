module Wobbly
  # Parse the string into chunks
  def self.tokens(s)
    s.scan(/[0-9]+[smhDMWY]/)
  end

  # Process the tokens into the collective date
  def self.in(s)
    now = Time.now

    tokens(s).each do |t|
      token = t.gsub(/(\d+)/, '\1,').split(',')

      next if token.size != 2

      amt = token[0].to_i
      seg = token[1].to_s

      case seg
    	when 's'
    	  now = now + amt
    	when 'm'
    	  now = now + (amt*60)
    	when 'h'
    	  now = now + (amt*60*60)
    	when 'D'
    	  now = now + (amt*24*60*60)
    	when 'W'
    	  now = now + (amt*7*24*60*60)
    	when 'M'
    	  now = now + (amt*4*7*24*60*60)
    	when 'Y'
    	  now = now + (amt*12*4*7*24*60*60)
    	else
    	  raise "Invalid time segment provided #{seg}"
      end
    end

    now
  end
end
