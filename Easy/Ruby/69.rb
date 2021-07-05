# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    n = 0
    pow = n * n
    while pow < x
        n += 1
        pow = n * n
        if pow >= x
            break
        end
    end
    
    if pow > x
        n - 1
    else
        n
    end
end
