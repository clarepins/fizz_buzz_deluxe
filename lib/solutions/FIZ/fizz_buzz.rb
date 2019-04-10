# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(num)
    @return = ''
    @return += 'fizz ' if divisible_by?(num, 3) || contains?(num, 3)
    @return += 'buzz ' if divisible_by?(num, 5) || contains?(num, 5)
    @return += 'fake ' if fake?(num)
    @return += 'deluxe' if deluxe?(num)
    @return = num.to_s if @return == ''
    @return.rstrip
  end

private

  def fake?(num)
    num % 2 == 1
  end

  def deluxe?(num)
    contains?(num, 3) && divisible_by?(num, 3) || contains?(num, 5) && divisible_by?(num, 5)
  end

  def divisible_by?(num, divisor)
    num % divisor == 0
  end

  def contains?(num, contains)
    num.to_s.include? contains.to_s
  end
end
