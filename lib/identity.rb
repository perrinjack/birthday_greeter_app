# frozen_string_literal: true

require 'date'

class Identity
  attr_accessor :birthday, :birthday_date, :current_date

  def initialize(name, day, month)
    @name = name
    @birthday = day + month
    @birthday_message = "Happy Birthday #{@name}! "
  end

  def result
    @days_until_birthday = calculate_days
    birthday? ? @birthday_message : "Your birthday is in #{@days_until_birthday} days #{@name}!"
  end

  private

  def calculate_days
    @current_date, @birthday_date = retrieve_date_formatting
    @birthday_date += 365 if birthday_date < current_date
    (birthday_date - current_date).to_i
  end

  def retrieve_date_formatting
    [Date.today, Date.parse(birthday)]
  end

  def birthday?
    current_date == birthday_date
  end
end
