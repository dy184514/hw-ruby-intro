# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  $res=0
  if arr.size==0
    p $res
  else
    arr.each{|i| $res+=i}
    p $res
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  $res=0
  if arr.length==0
    p $res
  elsif arr.length==1
    p arr[0]
  elsif
    arr=arr.sort
    $res = (arr[arr.length-1] + arr[arr.length-2])
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length<=1
  h= {}
  arr.each{|x|
    if h.key? x
      return true
    else
      h[n-x]=n
    end 
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  p "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length==0
    p false
  elsif
    s =~ /[^a-zA-Z]/
    p false
  else
    not s =~ /^[aeiouAEIOU]/
  end 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s=='0'
    return true
  end
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
    if (@isbn == "") or (@price <= 0)
      raise(ArgumentError)
    end
  end
  
  def price_as_string
    format("$%.2f", @price)
  end
end
