"""

You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example:

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.

"""


# Definition for singly-linked list.
 class ListNode
     attr_accessor :val, :next
     def initialize(val = 0, _next = nil)
         @val = val
         @next = _next
     end
 end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    result = ListNode.new
    tmp = result
    while(l1 or l2) do
      val1 = l1 ? l1.val : 0
      val2 = l2 ? l2.val : 0
      result.val += (val1 + val2)
      if result.val > 9
          result.val -= 10
          result.next = ListNode.new(1)
      else
          result.next = ListNode.new
      end
      l1 = l1.next if l1
      l2 = l2.next if l2
      result.next = nil if l1.nil? and l2.nil? and result.next.val == 0
      result = result.next
    end
    tmp
end
