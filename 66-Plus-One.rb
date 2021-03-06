# Given a non-empty array of digits representing a non-negative integer, plus one to the integer.

# The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.

# You may assume the integer does not contain any leading zero, except the number 0 itself.

# Example 1:

# Input: [1,2,3]
# Output: [1,2,4]
# Explanation: The array represents the integer 123.
# Example 2:

# Input: [4,3,2,1]
# Output: [4,3,2,2]
# Explanation: The array represents the integer 4321.

# 48ms
# def plus_one(digits)
#     (digits.join("").to_i + 1).to_s.split("").map { |i| i.to_i }
# end

# 44ms 100%
def plus_one(digits)
  digits[-1] += 1
  digits = digits.reverse
  (0...digits.size).each do |i|
    if digits[i] == 10
      digits[i] = 0
      digits[i+1] ? digits[i+1] += 1 : digits += [1]
    end
  end
  digits.reverse
end
