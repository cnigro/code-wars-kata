# Given a string that includes alphanumeric characters ('3a4B2d') return the
# expansion of that string: The numeric values represent the occurrence of each
# letter preceding that numeric value. There should be no numeric characters in
# the final string. Empty strings should return an empty string.

def string_expansion(s)
  mult = 1
  s.chars.each_with_object([]) do |char, expansion|
    char =~ /[a-z]/i ? expansion << char * mult : mult = char.to_i
  end.join
end

# The first occurrence of a numeric value should be the number of times each
# character behind it is repeated, until the next numeric value appears.
p string_expansion('3D2a5d2f') == 'DDDaadddddff'
p string_expansion('3abc') == 'aaabbbccc'       # correct
p string_expansion('3abc') != 'aaabc'           # wrong
p string_expansion('3abc') != 'abcabcabc'       # wrong

# If there are two consecutive numeric characters the first one is ignored.
p string_expansion('3d332f2a') == 'dddffaa'

# If there are two consecutive alphabetic characters then the first character
# has no effect on the one after it.
p string_expansion('abcde') == 'abcde'

# Your code should be able to work for both lower and capital case letters.
p string_expansion('') == ''
