class Solver
  def factorial(num)
    return 1 if num.zero?

    num * factorial(num - 1)
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      'not divisible'
    end
  end
end
