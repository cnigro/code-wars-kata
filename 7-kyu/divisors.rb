# Create a function named divisors/Divisors that takes an integer n > 1 and
# returns an array with all of the integer's divisors(except for 1 and the
# number itself), from smallest to largest. If the number is prime return the
# string '(integer) is prime' (null in C#) (use Either String a in Haskell and
# Result<Vec<u32>, String> in Rust).

require 'prime'

def divisors(num)
  return "#{num} is prime" if num.prime?
  factors = []
  2.upto(num - 1) { |i| factors << i if (num % i).zero? }
  factors
end

# Example:
p divisors(12) # should return [2,3,4,6]
p divisors(25) # should return [5]
p divisors(13) # should return "13 is prime"