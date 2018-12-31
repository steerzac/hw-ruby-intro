# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  my_sum = 0
  for val in arr do
    my_sum += val
  end
  return my_sum
end

def max_2_sum(arr)
  if arr.length == 0 then
    return 0
  end
  if arr.length == 1 then
    return arr[0]
  end
  
  big_max = -1.0/0.0
  lil_max = -1.0/0.0
  for val in arr do
    if val >= big_max then
      lil_max = big_max
      big_max = val
    elsif val >= lil_max then
      lil_max = val
    end
  end
  
  return (big_max + lil_max)
end

def sum_to_n? arr, n
  for i in 0..arr.length-1 do
    for j in i+1..arr.length-1 do
      if (arr[i] + arr[j]) == n then
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length() == 0 then
    return false
  end
  s = s.upcase
  consonants = "BCDFGHJKLMNPQRSTVWXYZ"
  return consonants.include?(s[0])
end

def is_binary_string? s
  if s.length == 0 then
    return false
  end
  
  for i in 0..s.length-1 do
    if s[i] != "0" && s[i] != "1" then
      return false
    end
  end
  return true
end

def binary_multiple_of_4? s
  if !(is_binary_string?(s)) then
    return false
  end
  
  s = s.to_i(2)
  return s % 4 == 0 
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length == 0 or price <= 0.0 then
      raise ArgumentError
    end
    
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price 
    @price 
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    dollars = @price.floor
    cents = ((@price * 100) % 100).floor
    
    if cents == 0 then
      cents = "00"
    end
    
    return "$#{dollars}.#{cents}"
  end
end
