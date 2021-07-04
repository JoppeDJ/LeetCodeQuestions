# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    list3 = concat(l1, l2)
    return list3.sort
end

def concat(l1,l2)
    l3 = []
    n = l1
    while n = nil
        l3.push(n.val)
        n = n.next
    end
    n = l2
    while n != nil
        l3.push(n.val)
        n = n.next
    end
    return l3
end
