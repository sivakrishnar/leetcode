"""
243. Shortest Word Distance
Easy

507

40

Add to List

Share
Given a list of words and two words word1 and word2, return the shortest distance between these two words in the list.

Example:
Assume that words = ["practice", "makes", "perfect", "coding", "makes"].

Input: word1 = “coding”, word2 = “practice”
Output: 3
Input: word1 = "makes", word2 = "coding"
Output: 1
Note:
You may assume that word1 does not equal to word2, and word1 and word2 are both in the list.
"""

# @param {String[]} words
# @param {String} word1
# @param {String} word2
# @return {Integer}
def shortest_distance(words, word1, word2)
    hash = Hash.new{|h,k| h[k]=[]}
    words.each_with_index do |word, i|
       hash[word] << i+1 
    end
    ret = []
    hash[word1].each do |w1|
       hash[word2].each do |w2|
          ret << (w1-w2).abs 
       end
    end
    ret.min
end
