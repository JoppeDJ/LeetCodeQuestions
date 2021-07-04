# @param {String} s
# @return {Integer}
def roman_to_int(s)
    s.reverse!
    numeral = 0
    highest = 0
    for i in 0..(s.length() - 1)
        numeral += handleRoman(s[i], highest)
        highest = handleHighest(s[i], highest)
    end
    
    numeral
end

def handleRoman(roman, highest)
    if (roman == 'I')
       if (highest == 5 || highest == 10)
          return -1
       else
           return 1
       end
    elsif (roman == 'V')
        return 5
    elsif (roman == 'X')
        if (highest == 50 ||highest == 100)
            return -10
        else
            return 10
        end
    elsif (roman == 'L')
        return 50
    elsif (roman == 'C')
        if (highest == 500 || highest == 1000)
            return -100
        else
            return 100
        end
    elsif (roman == 'D')
        return 500
    elsif (roman == 'M')
        return 1000
    end 
end

def handleHighest(s, highest)
    if (s == 'I')
       numeral = 1
    elsif (s == 'V')
        numeral = 5
    elsif(s == 'X')
        numeral = 10
    elsif (s == 'L')
        numeral = 50
    elsif (s == 'C') 
        numeral = 100
    elsif (s == 'D')
        numeral = 500
    elsif (s == 'M')
        numeral = 1000
    end
    
    if (highest > numeral)
        return highest
    else 
        return numeral
    end
    
end
