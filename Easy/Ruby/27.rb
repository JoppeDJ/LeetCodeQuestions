# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    length = nums.length
    return 0 unless length != 0
    
    nils = 0
    nums.map! do |e| 
        if e == val
            nils += 1
            nil
        else 
            e
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
            if index != i
                nums[i] = nil
            end
            index += 1
        end
        i += 1
    end
end
