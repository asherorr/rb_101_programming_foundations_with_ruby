# m = 230000 * (0.00500 / (1 - (1 + 0.00500)**(-360)))

# puts m.to_i

# def convert_apr_to_percent(n)
#     self.to_f / n.to_f * 100.0
# end

def mortgage_calculator
  puts("What is the loan amount? Enter it with a currency symbol and commas (ex: $250,000)")
  loan_amount = gets.chomp
  loan_amount = loan_amount.delete!("$")
  loan_amount = loan_amount.delete!(",")
  loan_amount = loan_amount.to_i
  puts("What is the APR? Enter it with a percnetage symbol and a number (ex: 5%")
  apr = gets.chomp
  apr = apr.delete!("%")
  apr = apr.to_i
  monthly_interest_rate = ((apr.to_f / 100.0) / 12.0)
  puts("What is the loan duration, in years?")
  loan_duration = gets.chomp
  loan_duration_in_months = loan_duration.to_i * 12
  m = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))
  puts "The monthly payment is $#{m}"
end

mortgage_calculator