class Solver
  def factorial(num)
    raise 'Invalid number' if num.negative?
    return 1 if num.zero?

    num * factorial(num - 1)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      num
    end
  end
end

def breadth_first_search(graph)
  confirm = Array.new(graph.keys.length, false)
  queue = []
  path = []
  queue.push(0)
  confirm[0] = true
  until queue.empty?
    current = queue.shift
    path.push(current)
    graph[current].each do |adjacent|
      unless confirm[adjacent]
        queue.push(adjacent)
        confirm[adjacent] = true
      end
    end
  end
  path
end

p breadth_first_search({
                         0 => [1, 2],
                         1 => [2, 3]
                       })
