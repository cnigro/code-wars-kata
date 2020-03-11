# Given a number, Return _The Maximum number_ could be formed from the digits
# of the number given.

# Notes
# Only Natural numbers passed to the function, numbers may only contain digits 
# [0..9] inclusive
# Digit Duplications could occur, so also consider it when forming the Largest

def max_number(n)
  n.digits.sort.reverse.join.to_i
end

# Examples
p max_number(213) == 321
p max_number(7389) == 9873
p max_number(63729) == 97632