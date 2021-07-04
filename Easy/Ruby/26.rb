# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    length = nums.length
    
    return 0 unless length!= 0
    
    last = -101
    nils = 0
    index = -1
    nums.map! do |e|
        if e == last
            nils += 1
            nil
        else
            last = e
        end
    end
    
    reorder(nums)
    
    return length - nils
end

def reorder(nums)
    index = 0
    i = 0
    while i < nums.length
        if nums[i] != nil
            nums[index] = nums[i]
            if i != index
                nums[i] = nil
            end
            index += 1
        end
        i += 1
    end
end
