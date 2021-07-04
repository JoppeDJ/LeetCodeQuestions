# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    left = 0
    right = nums.length
    middle = nums.length / 2
    not_found = true
    while true
        if left == right || left == right - 1
            if target <= nums[left]
                return left
            else
                return right
            end
        elsif target < nums[middle]
            right = middle
            middle = (right + left) / 2
        elsif nums[middle] < target
            left = middle
            middle = (right + left) / 2
        else
            return middle
        end  
    end
end
