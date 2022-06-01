# @param {String} s
# @return {Boolean}
def is_valid(s)
   stack = []
    
    s.each_char do |c|
        case c
            when "(" ,"{" , "["
                 stack.push(c)
            when ")"
                return false if stack.pop() != "("
            when "}"
             return false if stack.pop() != "{"
            when "]"
             return false if stack.pop() != "["
        end 
    end 
    stack.empty?
end


