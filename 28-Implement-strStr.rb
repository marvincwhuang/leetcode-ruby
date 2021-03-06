# Implement strStr().

# Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

# Example 1:

# Input: haystack = "hello", needle = "ll"
# Output: 2
# Example 2:

# Input: haystack = "aaaaa", needle = "bba"
# Output: -1
# Clarification:

# What should we return when needle is an empty string? This is a great question to ask during an interview.

# For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().
# Runtime: 52 ms, faster than 55.56% of Ruby online submissions for Implement strStr().
def str_str(haystack, needle)
    if needle == ""
        0
    else
        i = 0
        while i < haystack.length
            if haystack[i..-1].start_with?(needle)
                break
            else
                i += 1
            end
        end
        i = -1 if i >= haystack.length
        i
    end
end
