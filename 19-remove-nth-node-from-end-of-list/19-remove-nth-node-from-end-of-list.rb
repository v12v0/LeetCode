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
   dummy_head = ListNode.new(0,head)
    left = dummy_head 
    right = head
    
    
    while n > 0 && right != nil
        right = right.next
        n -= 1
    end
    
    while right != nil
        left = left.next 
        right = right.next
    end 
    left.next = left.next.next
    dummy_head.next
end


    
 