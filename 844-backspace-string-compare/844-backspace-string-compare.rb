# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
    s_stack = []
    t_stack = []
    s.each_char{|c| c == "#" ? s_stack.pop() : s_stack.push(c)}
    t.each_char{|c| c == "#" ? t_stack.pop() : t_stack.push(c)}
    s_stack == t_stack
    
end