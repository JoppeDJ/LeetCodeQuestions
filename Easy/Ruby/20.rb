# @param {String} s
# @return {Boolean}
def is_valid(s)
    char_q = []
    split = s.split('')
    last_len = 0
    new_len = -1
    
    while last_len != new_len
        last_len = split.length
        split.each do |c|
            case c
            when ')'
                if char_q[-1] == '('
                   char_q.pop 
                else
                    char_q.push(c)
                end
            when '}'
                 if char_q[-1] == '{'
                   char_q.pop 
                else
                    char_q.push(c)
                end
            when ']'
                 if char_q[-1] == '['
                   char_q.pop 
                else
                    char_q.push(c)
                end
            else
                char_q.push(c)
            end
        end
        
        split = char_q
        new_len = split.length
        char_q = []    
    end
    
    return split.length == 0
end
