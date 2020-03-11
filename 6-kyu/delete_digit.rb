# Given an integer n, find the maximal number you can obtain by deleting
# exactly one digit of the given number.

def delete_digit(n)
  digits = n.digits.reverse
  return digits[0].to_i if digits.size < 3
  digits.map.with_index do |_, i|
    if (i < digits.size - 1) && (digits[i] < digits[i + 1])
      digits.delete_at(i)
      break 
    elsif i == (digits.size - 1)
      digits.delete_at(i)
      break 
    end
  end
  digits.join.to_i
end

# Top solution from codewars
# def delete_digit(num)
#   digits = num.to_s.chars
#   (0...digits.size).map { |idx| (digits[0...idx] + digits[idx + 1..-1]).join.to_i }.max
# end

# Example
p delete_digit(152)  == 52
p delete_digit(1001) == 101
p delete_digit(10)   == 1
