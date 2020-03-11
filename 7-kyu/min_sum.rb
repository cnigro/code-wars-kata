# Given an array of integers , Find the minimum sum which is obtained from
# summing each Two integers product .

# Notes
# Array/list will contain positives only .
# Array/list will always has even size

# High level solution
# Iterate over the array, find the largest and smalled integers, and multiply
# on the next iteration, find the second-largest/smallest integers, multiply
# continue until all pairs have been used once.

def min_sum(arr)
  sum = 0
  arr = arr.sort
  (arr.size / 2).times { sum += (arr.pop * arr.shift) }
  sum
end

#Examples
p min_sum([5, 4, 2, 3]) == 22
p min_sum([12, 6, 10, 26, 3, 24]) == 342
p min_sum([9, 2, 8, 7, 5, 4, 0, 6]) == 74
