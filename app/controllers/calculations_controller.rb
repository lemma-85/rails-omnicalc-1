class CalculationsController < ApplicationController
  
  # Square
  def new_square
    render({ :template => "calculations_templates/new_square" })
  end

  def square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({ :template => "calculations_templates/square_results" })
  end

  # Square root
  def new_square_root
    render({ :template => "calculations_templates/new_square_root" })
  end

  def square_root_results
    @the_entry = params.fetch("user_entry").to_f
    @the_squareroot = @the_entry ** 0.5
    render({ :template => "calculations_templates/square_root_results" })
  end

  # Random number
  def new_random
    render({ :template => "calculations_templates/new_random" })
  end

  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random_num = rand(@min..@max)
    render({ :template => "calculations_templates/random_results" })
  end

  # Loan payment
  def new_payment
    render({ :template => "calculations_templates/new_payment" })
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_f
    @principal = params.fetch("user_pv").to_f

    monthly_rate = @apr/100/12
    months = @years * 12

    @numerator = monthly_rate * @principal
    @denominator = (1 - (1 + monthly_rate)**-months)

    @payment = (@numerator / @denominator)

    render({ :template => "calculations_templates/payment_results" })
  end
end
