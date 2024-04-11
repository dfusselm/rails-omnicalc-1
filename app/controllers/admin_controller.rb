class AdminController < ApplicationController
  def square
      render({ :template => "templates/square_new"})
  end

def square_results
  @the_num = params.fetch("number").to_f
  
  @the_result = @the_num ** 2
  render({ :template => "templates/square_results"})
end


  def root
    render({ :template => "templates/root_new"})
  end

def root_results
  @the_num = params.fetch("user_number").to_f

  @the_result = @the_num ** 0.5
  render({ :template => "templates/root_results"})
end


def payment
  render({ :template => "templates/payment_new"})
end

def payment_results
  @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_f
  @pv = params.fetch("user_pv").to_f

  @r = @apr / 100 / 12
  @denominator = 1- ((1+@r) ** (-@years * 12))
  @numerator = @r * @pv
  @p = @numerator / @denominator
  @apr = @apr.to_fs(:percentage, {:precision => 4})
  @pv = @pv.to_fs(:currency)
  @p = @p.to_fs(:currency)
  render({ :template => "templates/payment_results"})
end

def random
  render({ :template => "templates/random_new"})
end


def random_results
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f

  @result = rand(@min..@max)
  render({ :template => "templates/random_results"})
end

end
