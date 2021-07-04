# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
   return (x - x.to_s.reverse().to_i) == 0
end
