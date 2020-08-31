"""
5. Longest Palindromic Substring
Medium

7724

565

Add to List

Share
Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.

Example 1:

Input: "babad"
Output: "bab"
Note: "aba" is also a valid answer.
Example 2:

Input: "cbbd"
Output: "bb"

"""

# @param {String} s
# @return {String}
def longest_palindrome(s)
   return s if s.size <= 1 
   ss_len = s.size-1
   while(ss_len >= 0) do
      i = 0
      while(true) do
         ss = s[i..i+ss_len]
          #p ss
         return ss if is_palindrome?(ss)
         i += 1
         break unless s[i+ss_len] 
      end
      ss_len -= 1 
   end
end

def is_palindrome?(s)
   return true if s.size <= 1 

   mid = (s.size/2)-1
   i, j = 0, -1
   while(true)
       break if i > mid
       return false if s[i] != s[j]
       i += 1
       j -= 1
   end
   true
end
