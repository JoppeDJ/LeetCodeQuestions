# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
   return n.to_s(2).split('').sum do |val|
        if val == '1'
            1
        else
            0
        end
    end
end
