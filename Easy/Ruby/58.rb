# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    split = s.split(" ")
    if split.length == 0
        return 0
    else
        return split[-1].split('').length
    end
end
