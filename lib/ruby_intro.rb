# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length <= 1
    return arr[0]
  else
    arr.sort!
    arr.reverse!
    return arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  if arr.empty? || arr.length <= 1 # Check if the array is empty or has only one element
    return false
  else
    if !arr.combination(2).find(proc {false}) {|x,y| x + y == n}
      return false
    else
      return true
    end
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
