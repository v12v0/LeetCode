# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    return nums if nums.length == 1
    
    hash = Hash.new(0)
    nums.each do |n|
        hash[n] += 1
    end 
    newHash =  hash.sort_by {|k, v| -v}
    array = []
    for i in 0...k
        array<<newHash[i][0]
    end
    return array
    
end