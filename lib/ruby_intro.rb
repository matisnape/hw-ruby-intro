# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  if arr.length > 0
    arr.each do |num|
      sum += num
    end
  end
  sum
end

def max_2_sum arr
  max_2_sum = 0
  if arr.length == 1 || arr.uniq.length == 1
    max_2_sum = arr[0]
  elsif arr.length > 1
    sorted = arr.sort
    max_2_sum = sorted.last + sorted[-2]
  end
  max_2_sum
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  else
    return !!arr.combination(2).find{ |x,y| x + y == n }
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if !!(s =~ /\A[a-zA-Z]/i)
    if s =~ /\A[AEIOU]/i
      return false
    end
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s.match?(/^[0-1]{1,}$/) == false
    return false
  elsif s.to_i % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
