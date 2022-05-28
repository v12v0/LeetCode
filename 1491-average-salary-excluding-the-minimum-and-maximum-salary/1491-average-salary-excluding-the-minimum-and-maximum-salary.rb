# @param {Integer[]} salary
# @return {Float}
def average(salary)
    # salary - salary.max - salary.min
  salary.sort!
    salary.pop()
    salary.shift()
    salary.sum/salary.size.to_f
    
end