class Mortgage
  attr_reader :home_value, :apr, :duration_in_years

  def initialize(home_value, apr, duration)
    @home_value = home_value
    @apr = apr
    @duration_in_years = duration
  end

  def down_payment

  end

  def monthly_payment
    ((@home_value * @apr * ((1 + @apr)**(@duration_in_years * 12))) /
    ((1 + @apr)**(@duration_in_years * 12) - 1))
  end

  def total_interest_paid

  end
end

a = Mortgage.new(10000, 0.01, 20)

puts a.monthly_payment
