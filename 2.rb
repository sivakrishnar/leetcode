"""

You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example:

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.

"""

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
def add_two_numbers(l1, l2)
   ret = ListNode.new
   ll = ret
   carry = 0
   while(true) do 
      break if !l1 and !l2  
      val1, val2 = 0, 0
      if l1
          val1 = l1.val
          l1 = l1.next
      end
       
      if l2
          val2 = l2.val
          l2 = l2.next
      end
      sum = val1 + val2 + carry
      if sum > 9
          sum = sum-10
          carry = 1
      else
          carry = 0
      end
      ret.val = sum
      if l1 or l2 
        ret = ret.next = ListNode.new 
      elsif carry == 1
        ret.next = ListNode.new(1)
      end
   end
   ll
end
