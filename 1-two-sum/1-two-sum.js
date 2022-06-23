/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    const map = {}
    
    for (let i = 0; i < nums.length; i++){
        n = nums[i]
        
        if(map[target-n] >= 0){
            return [map[target-n],i]
        }else{
            map[n] = i
        }
    }
    
};