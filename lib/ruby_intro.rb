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
  attr_reader :isbn, :price

  def isbn=(isbn)
    if isbn == ''
      raise ArgumentError.new("Cannot be empty string")
    end
    @isbn = isbn
  end

  def price=(price)
    if price <= 0
      raise ArgumentError.new("Cannot be less or equal zero")
    end
    @price = price
  end

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def price_as_string
    "$" + '%.2f' % price
  end
end
