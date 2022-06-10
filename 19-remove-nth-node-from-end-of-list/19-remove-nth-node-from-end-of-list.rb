# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}

# the head is the el previous from n
# give all el behind the head 
# skip the n el from the last 
# return the last el 
def remove_nth_from_end(head, n)
    root = head 
    trailing = head 
    i = 0 
    
    while head.next 
        head = head.next 
        trailing = trailing.next if i >= n
        i += 1 
    end 
    
    if i < n 
        root = trailing.next 
    else 
        trailing.next = trailing.next.next
    end 
    root
    
end