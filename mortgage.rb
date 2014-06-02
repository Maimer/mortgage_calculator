class Mortgage
  attr_reader :home_value, :apr, :duration_in_years

  def initialize(home_value, down_payment_percentage, apr, duration)
    @home_value = home_value
    @down_payment_percentage = down_payment_percentage
    @apr = apr
    @duration_in_years = duration
  end

  def down_payment
    @down_payment_percentage * @home_value
  end

  def monthly_payment
    (((@home_value - down_payment) * @apr *
    ((1 + @apr)**(@duration_in_years * 12))) /
    ((1 + @apr)**(@duration_in_years * 12) - 1))
  end

  def total_interest_paid
    ((monthly_payment * (@duration_in_years * 12)) -
    (@home_value - @down_payment)
  end
end

a = Mortgage.new(100000, 0.20, 0.01, 20)

puts a.monthly_payment
puts a.down_payment
