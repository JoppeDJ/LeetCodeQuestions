# @param {Integer} x
# @return {Integer}
def reverse(x)
    num_rev =  x.to_s.split('').reverse().join('').to_i
    
    if num_rev > 2**31 - 1 || num_rev < (-2)**31
        return 0
    end
    
    if x > 0
        return num_rev
    else
        return num_rev * -1
    end
end
