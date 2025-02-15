# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # Gets each element in the array and adds it
  sum=0
  arr.each do |n|
	sum +=n
  end
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  # Returns 0 for empty array
  if (arr.length == 0)
	return 0
 # Returns first element for 1 element array
  elsif (arr.length == 1)
	return arr[0]
  else
	# Sorts array
	arr.sort!
	# Adds the two largest elements (two last elements)
	sum = arr[(arr.length-1)]+arr[(arr.length-2)]
	return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # i is the array's next index (i.e. where the sum starts for each pass)
  i = 1
  arr.each do |num|
	if(num!=n) # Automatically false - any number added to n won't add to n
		# j is the current comparator
		j = i
		until j >= arr.length
			sum = num + arr[j]
			if sum==n
				return true
			end
			j += 1
		end
	i+=1
	end
  end
  # Returns false here because will only reach this point if not summing
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  hi = "Hello, " +name
  hi
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # Gives nil if is not included in (not case sensitive) letters
  # Listed in array (the non-vowels)
  # So check against nil because want to return the ones that 
  # DO start with a consonant
  c = /^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/.match(s[0])
  if(c==nil)
	# If c is nil, the first letter does not match the consonant regex
	return false
  else
	# If c is 1, the first letter matches the regex
	return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if (s=="0")
  # A binary multiple of 4 ends in 00
  # This regex looks for any number of 0's or 1's, ended by 00
  c = /^[10]*00$/.match(s)
  if c==nil
	return false
  else
	return true
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize (isbn, price)
	raise ArgumentError, 
	  "Illegal Argument" if isbn.empty? or price <= 0
	@isbn = isbn
	@price = price
  end

 def price_as_string
	# sprintf does the printf formatting, but makes a variable
	sprintf "$%2.2f", @price
  end
end
