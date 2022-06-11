# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    dummy_head = ListNode.new(0,head)
    prev = dummy_head 
    curr = head 
    
    while curr != nil
        if curr.val == val 
            prev.next = curr.next 
        else
            prev = curr
        end 
        curr = curr.next
    end 
    dummy_head.next
end