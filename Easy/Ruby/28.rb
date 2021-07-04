# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return 0 if needle.empty?
     
    i = 0
    found = false
    while i <= haystack.length - needle.length
        found = checkSubStr(haystack, needle, i)
        
        if found
            break
        end
        
        i += 1
    end
    
    if found
        return i
    else
        return -1
    end
end

def checkSubStr(haystack, needle, start)
    i = start
    index = 0
    while i < haystack.length
        if haystack[i] != needle[index]
            return false
        else
            i += 1
            index += 1
            if index == needle.length
                return true
            end
        end
    end
    
    return false
end
