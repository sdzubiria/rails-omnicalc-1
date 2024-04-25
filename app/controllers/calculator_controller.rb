class CalculatorController < ApplicationController
  def home
    render plain: "<h1>Hola</h1>"
  end

  def new_square
    render 'new_square_calc'
  end

  def calculate_square
    @the_num = params[:users_number].to_f
    @the_result = @the_num ** 2
    render 'square_results'
  end

  def new_square_root
    render 'new_square_root_calc'
  end

  def calculate_square_root
    @the_num = params[:users_number].to_f
    @the_result = Math.sqrt(@the_num)
    render 'square_root_results'
  end

  def new_payment
    render 'new_payment'
  end

  def calculate_payment
    @user_apr = params[:user_apr].to_f
    @user_years = params[:user_years].to_i
    @user_pv = params[:user_pv].to_f
    monthly_interest_rate = @user_apr / 100 / 12
    total_payments = @user_years * 12
    if monthly_interest_rate == 0
      @monthly_payment = @user_pv / total_payments
    else
      numerator = monthly_interest_rate * @user_pv
      denominator = 1 - (1 + monthly_interest_rate) ** -total_payments
      @monthly_payment = numerator / denominator
    end
    render 'payment_results'
  end

  def new_random
    render 'new_random'
  end

  def calculate_random
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @random_number = rand(@min..@max)
    render 'random_results'
  end
end
