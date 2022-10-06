class Solver
  def factorial(num)
    raise 'Negative numbers are not allowed' if num < 0
    return 1 if num == 1 || num == 0
    num*factorial(num - 1)
  end

  def reverse(string)
    string.reverse
  end
end
