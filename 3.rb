"""

3. Longest Substring Without Repeating Characters
Medium

10400

603

Add to List

Share
Given a string, find the length of the longest substring without repeating characters.

Example 1:

Input: "abcabcbb"
Output: 3 
Explanation: The answer is "abc", with the length of 3. 
Example 2:

Input: "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3. 
             Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
             
             """
             
 # @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  ret = []
  s.chars.each_with_index do |ch, index|
     subret = find(s, index, [ch]) 
     ret = subret if subret.size > ret.size 
  end
  ret.size
end

def find(s, sindex, chars) 
   (sindex+1).upto(s.size-1) do |i|
       if chars.include? s[i]
           return chars
       else
           chars << s[i]
       end
   end
   chars 
end            
             
             
