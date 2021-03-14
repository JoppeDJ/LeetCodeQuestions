# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
    num = 0
    arr = n.to_s(2).split('')
    
    while arr.length != 32
        arr.unshift(0)
    end
    
    arr.each_with_index do |val, index|
        num += val.to_i * 2**index
    end
    
    return num
end
