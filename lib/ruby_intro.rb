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
    return !!arr.combination(2).find{ |x,y| x + y == n}
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
