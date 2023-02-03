# When done, submit this entire file to the autograder.

# Part 1

#1.1
def sum arr
    return arr.inject(0) { |sum, x| sum + x }
end

#1.2
def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort!
  arr[-1] + arr[-2]
end

#1.3
def sum_to_n? arr, n
  arr.sort!
  l = 0
  r = arr.length-1
  
  while l < r 
    if arr[l] + arr[r] == n
      return true
    elsif arr[l] + arr[r] < n
      l += 1
    else 
      r -= 1
    end
  end 
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s = s.downcase
  if s.empty? || s[0] =~ /[^a-z]/ || s[0] =~ /[aeiou]/
    return false
  else 
    return true
  end
end


def binary_multiple_of_4? s
  if s.to_i % 4 == 0 
    return true
  else 
    return false
  end
end


# Part 3

class BookInStock                                                               # This class defines a BookInStock object, which has two attributes: isbn and price.
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)                                                   # The initialize method sets the isbn and price attributes when a new object is created and raises an ArgumentError if either isbn or price is empty or zero.
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

end
