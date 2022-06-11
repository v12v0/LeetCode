# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    cur = head 
    while cur != nil 
        while cur.next && cur.next.val == cur.val
            cur.next = cur.next.next
        end 
        cur = cur.next
    end 
    head
end