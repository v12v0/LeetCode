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
def remove_nth_from_end(head, n)
    dummy = ListNode.new(0,head)
    left = dummy 
    right = head 
    
    while n > 0 && right 
        right = right.next 
        n -= 1
    end 
    
    while right != nil 
        left = left.next
        right = right.next
    end 
    left.next = left.next.next 
    dummy.next 
    
end