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
  if arr.empty? || arr.length <= 1 # Check if the given array is empty or has only one element
    return false
  else
    if !arr.combination(2).find(proc {false}) {|x,y| x + y == n} # .combination to get all pairs of elements in the array
      return false                                               # then find with .find method
    else                                                         # a = [1, 2, 3, 4]  
      return true                                                # a.combination(2).to_a  => [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
    end
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s == "" || s.downcase.start_with?(/[^a-z]/)  # Check if the  given string is empty or didn't start with a-z(nonletters)
    return false
  else
    return !s.downcase.start_with?(/[aeiou]/)     # Check if the given string start with consonant (a, e, i, o, u)
  end
end

def binary_multiple_of_4? s
  binary = /^[1|0]+/.match(s)               # Check if the string is match the binary format
  if binary 
    return (binary.to_s.to_i(2) % 4 == 0)   # We check for the multiple of 4 by modding it and return
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :price,:isbn                                    # Setter and Getter
  def initialize(isbn,price)
    raise ArgumentError if !isbn.is_a?(String) || isbn == ''    # Raise Error if ISBN is invalid
    raise ArgumentError if price == 0 || price < 0              # Raise Error if Price is zero or less than zero
    @isbn = isbn
    @price = Float(price)
  end
  
  def price_as_string
    "$#{sprintf("%.2f", price)}"                                # Use sprintf to format string (dd.dddd -> dd.dd )
  end
end

test = BookInStock.new('7AB', 33.957)
puts test.price_as_string

