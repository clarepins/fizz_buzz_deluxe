# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    @number = number
    @return = ''
    @return += 'fizz ' if divisible_by?(3) || contains?(3)
    @return += 'buzz ' if divisible_by?(5) || contains?(5)
    @return += 'fake ' if fake?
    @return += 'deluxe' if deluxe?
    @return = @number.to_s if @return == ""
    @return.rstrip
  end

private

  def fake?
    @number % 2 == 1
  end

  def deluxe?
    contains?(3) && divisible_by?(3) || contains?(5) && divisible_by?(5)
  end

  def divisible_by?(num)
    @number % num == 0
  end

  def contains?(num)
    @number.to_s.include? num.to_s
  end
end
