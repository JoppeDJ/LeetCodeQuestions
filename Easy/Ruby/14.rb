# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    prefix = ""
    longest_string_length = getLongestStringLength(strs)
    
    for i in 0..(longest_string_length - 1)
        first_char = strs[0][i]
        flag = true
        strs.each { |string| flag = false if string[i] != first_char }
        if flag
            prefix += first_char
        else
            break
        end
    end
            
    prefix
end

def getLongestStringLength(str)
    length = 0
    str.each do |string|
        if string.length() > length
            length = string.length()
        end
    end
    
    length
end
