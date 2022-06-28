/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
 const hash_map = {}
 
 for(let i = 0; i < nums.length; i++){
    const diff = target - nums[i]
    
    if(hash_map[diff] !== undefined){
        return [hash_map[diff], i]
    }else{
        hash_map[nums[i]] = i 
    }
 }
    
};
    