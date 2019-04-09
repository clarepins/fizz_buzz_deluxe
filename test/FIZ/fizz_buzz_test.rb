# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'FIZ'

class ClientTest < Minitest::Test

  def test_fizz_buzz
    assert_equal 'fizz buzz', FizzBuzz.new.fizz_buzz(60), 'Num divisible by 15 should output fizz buzz'
  end

  def test_fizz_buzz_3
    assert_equal 'fizz buzz', FizzBuzz.new.fizz_buzz(180), 'Num including 3 & 5 should output buzz'
  end

  def test_fizz
    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(6), 'Num divisible by 3 should output fizz'
  end

  def test_fizz_2
    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(6), 'Num divisible by 3 should output fizz'
  end

  def test_buzz
    assert_equal 'buzz', FizzBuzz.new.fizz_buzz(5), 'Num divisible by 5 should output buzz'
  end

  def test_other_integer
    assert_equal '4', FizzBuzz.new.fizz_buzz(4), 'Num not divisible by 3 or 5 should output num'
  end

  def test_buzz
    assert_equal 'buzz', FizzBuzz.new.fizz_buzz(10), 'Num divisible by 5 should output buzz'
  end

  def test_deluxe
    assert_equal 'fizz deluxe', FizzBuzz.new.fizz_buzz(36), 'Num is delux if divisible by 3 and contains a 3'
  end

  def test_deluxe_2
    assert_equal 'buzz deluxe', FizzBuzz.new.fizz_buzz(50), 'Num is delux if divisible by 5 and contains a 5'
  end
end
