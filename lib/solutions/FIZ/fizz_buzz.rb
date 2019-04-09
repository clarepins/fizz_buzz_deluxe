# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    @number = number
    @return = ""
    @return += 'fizz ' if output_fizz?
    @return += 'buzz ' if output_buzz?
    return @return += 'fake deluxe' if output_fake_deluxe?
    @return += 'deluxe' if output_deluxe?
    @return = @number.to_s if @return == ""
    @return.rstrip
  end

private

  def output_fake_deluxe?
    @number % 2 == 1 && output_deluxe?
  end

  def output_deluxe?
    return true if contains?(3) && @number % 3 == 0
    return true if contains?(5) && @number % 5 == 0
  end

  def output_fizz?
    return true if @number % 3 == 0
    return true if contains?(3)
  end

  def output_buzz?
    return true if @number % 5 == 0
    return true if contains?(5)
  end

  def contains?(num)
    @number.to_s.include? num.to_s
  end

end
