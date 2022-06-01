# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
     nums.sort_by! { |n| n.zero? ? 1 : 0 }
end