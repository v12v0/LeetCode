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
    forward = iterator = dummy_head 
    n.times do 
        forward = forward.next
    end 
    
    while (forward.next != nil) do
        iterator = iterator.next 
        forward = forward.next 
    end 
    iterator.next = iterator.next.next 
    return dummy_head.next
end


    
 