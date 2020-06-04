# frozen_string_literal: true

require 'date'

class Identity
  attr_accessor :birthday, :birthday_date, :current_date

  def initialize(name, day, month)
    @name = name
    @birthday = [day, month]
    @birthday_message = "Happy Birthday #{name}! "
  end

  def result
    @days_until_birthday = calculate_days
    birthday? ? @birthday_message : "Your birthday is in #{@days_until_birthday} days!"
  end

     private

  def calculate_days
    @current_date = Date.today
    @birthday_date = Date.parse(@birthday.join(' ').to_s)
    @birthday_date += 365 if birthday_date < current_date
    (birthday_date - current_date).to_i
  end

  def birthday?
    current_date == birthday_date
  end
   end
