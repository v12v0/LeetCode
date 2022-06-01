# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
nums.each_with_index do |n, i|
    if n == target
      return i
    else
      if i == 0 && target < n
        return 0
      elsif i == nums.length - 1
        return i + 1  
      elsif target.between?(n, nums[i + 1])
        return i + 1
      else
      end  
    end
  end 
end