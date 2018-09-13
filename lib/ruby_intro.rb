# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  #Testing commit number 2
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end 
  arr.sort[-1] + arr.sort[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  end
  
  if arr.length == 1
    return false
  end
  
  d = Hash.new
  for v in arr
    if d.key? v
      return true
    else
      d[n - v] = 0
    end
  end 
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  res = "Hello, " + name
  return res
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  if /^[10]*00$/.match(s)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(n, v)
    if n.empty?
      raise ArgumentError
    end
    
    if v <= 0
      raise ArgumentError
    end
    @isbn=n
    @price=v
  end
    
  def price_as_string
    val = "$%.2f" % @price
    return val
  end
end
