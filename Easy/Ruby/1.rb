# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums.each_with_index do |val, index|
        rest = target - val
        other_index = nums.index(rest)
        if other_index && other_index != index
            return [index, other_index] 
        end
    end
end
