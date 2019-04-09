# noinspection RubyUnusedLocalVariable
class Sum

  def sum(x, y)
    check(x, y)
    @return = x + y
  end

  def check(x, y)
    raise 'Need 0-100 integer' unless x >= 0 && x <= 100 && y >= 0 && y <= 100
  end

end
