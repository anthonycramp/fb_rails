class ComputeFizzBuzzController < ApplicationController
  def default
    @fizzbuzznumbers = []
    (1..100).each {|number| @fizzbuzznumbers << computeFizzBuzz(number)}
  end
  
  private
  def computeFizzBuzz(number)
    return "FizzBuzz" if 0 == number % 15
    return "Fizz" if 0 == number % 3
    return "Buzz" if 0 == number % 5
    number
  end
end
