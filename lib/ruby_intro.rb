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
  puts "Hello, #{name}"
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
