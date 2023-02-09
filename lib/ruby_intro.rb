# frozen_string_literal: true

# Part 1

def sum(arr)
  sum = 0
  arr.each{|a| sum += a}
  return sum
end

def max_2_sum(arr)
  arr.sort!
  sum = 0
  if arr.size == 0
    return sum
  end
  if arr.size == 1
    return arr.at(0)
  end
  sum = arr[-1] + arr[-2]
  return sum
end

def sum_to_n?(arr, number)
  if arr.size <= 1
    return false
  end
  ret_val = false
  for i in 0..arr.size-1
    num_to_find = number - arr[i]
    ind = arr.find_index(num_to_find)
    if ind != nil && ind != i
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name.to_s
end

def starts_with_consonant?(string)
  string = string.downcase
  if string.length == 0 || !string[0].match?(/[[:alpha:]]/)
    return false
  end
  vowels = ['a', 'e', 'i', 'o', 'u']
  return !vowels.include?(string[0])
end

def binary_multiple_of_4?(string)
  if string.size == 0
    return false
  end
  if string.size <= 2
    for i in 0..string.size-1
      if string[i] == '1'
        return false
      end
    end
    return true
  end
  for i in 0..string.size-1
    if string[i] != '0' && string[i] != '1'
      return false
    end
  end
  if string[-2] == '1' || string[-1] == '1'
    return false
  end
  return true
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :price, :isbn

  def initialize(isbn, price)
    raise ArgumentError, "Invalid ISBN" if isbn.empty?
    raise ArgumentError, "Invalid price" if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % price}"
  end
end
