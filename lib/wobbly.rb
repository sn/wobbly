module Wobbly
  # Parse the string into chunks
  def self.tokens(s)
    s.scan(/[0-9]+[smhDMWY]/)
  end

  # Process the tokens into the collective date
  def self.in(s)
    now = Time.now

    tokens(s).each do |t|
      # Use regex match to directly capture amount and segment
      amt, seg = t.match(/(\d+)([smhDMWY])/).captures
      amt = amt.to_i

      case seg
      when 's'
        now += amt
      when 'm'
        now += amt * 60
      when 'h'
        now += amt * 60 * 60
      when 'D'
        now += amt * 24 * 60 * 60
      when 'W'
        now += amt * 7 * 24 * 60 * 60
      when 'M'
        # Approximating 1 month as 30 days
        now += amt * 30 * 24 * 60 * 60
      when 'Y'
        # Approximating 1 year as 365 days
        now += amt * 365 * 24 * 60 * 60
      else
        raise ArgumentError, "Invalid time segment provided: #{seg}"
      end
    end

    now
  end
end
