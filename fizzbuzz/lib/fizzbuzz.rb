class FizzBuzz

  def initialize

  end

  def play(num)
    if(num % 3 == 0 && num % 5 == 0)
      return 'fizzbuzz'
    elsif (num % 3 == 0)
      return 'fizz'
    elsif (num % 5 == 0)
      return 'buzz'
    else
      return num
    end
  end

  def play_full(range)
    arr = Array.new
    for i in 1..range
      if(i % 3 == 0 && i % 5 == 0)
        arr.push('fizzbuzz')
      elsif (i % 3 == 0)
        arr.push('fizz')
      elsif (i % 5 == 0)
        arr.push('buzz')
      else
        arr.push(i)
      end
    end
    return arr
  end
end
