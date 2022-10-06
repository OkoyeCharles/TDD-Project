class Solver
  def factorial(num)
    raise 'Negative numbers are not allowed' if num.negative?
    return 1 if [1, 0].include?(num)

    num * factorial(num - 1)
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 5).zero? && (number % 3).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    number.to_s
  end
end
