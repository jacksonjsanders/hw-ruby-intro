# When done, submit this entire file to the autograder.

# Part 1

#1.1
def sum arr
    return arr.inject(0) { |sum, x| sum + x }                                   # Uses inject method to loop through arr, adding to sum as it goes along (Base case 0)
end

#1.2
def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1                                              # If arr is only 1 element, returns value of that element
  arr.sort!
  arr[-1] + arr[-2]                                                             # Sorts array and sums the final two elements
end

#1.3
def sum_to_n? arr, n                                                            # Uses double pointer method to see if two elements in arr sum to n
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
  if s.empty? || s[0] =~ /[^a-z]/ || s[0] =~ /[aeiou]/                          # Uses Regex to return false if first character isn't a letter or is a vowel
    return false
  else 
    return true
  end
end


def binary_multiple_of_4? s
  if s !~ /^[01]+$/                                                             # Makes sure input is binary number
    return false
  else s.to_i % 4 == 0
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

  def price_as_string
    format("$%.2f", @price)                                                     # Displays price in "$00.00" format (two digits after decimal with a leading $)
  end

end
