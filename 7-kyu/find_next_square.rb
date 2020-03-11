# You might know some pretty large perfect squares. But what about the NEXT one?

# Complete the findNextSquare method that finds the next integral perfect
# square after the one passed as a parameter. Recall that an integral perfect
# square is an integer n such that sqrt(n) is also an integer.

# If the parameter is itself not a perfect square, than -1 should be returned.
# You may assume the parameter is positive.
require 'cmath'

def find_next_square(sq)
  root = CMath.sqrt(sq)
  return -1 unless root == root.floor(2)
  root = root.floor + 1
  root *= root
end

# Examples:
p find_next_square(121) == 144
p find_next_square(625) == 676
p find_next_square(114) == -1 # since 114 is not a perfect
