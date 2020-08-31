"""

4. Median of Two Sorted Arrays
Hard

7705

1212

Add to List

Share
Given two sorted arrays nums1 and nums2 of size m and n respectively.

Return the median of the two sorted arrays.

Follow up: The overall run time complexity should be O(log (m+n)).

 

Example 1:

Input: nums1 = [1,3], nums2 = [2]
Output: 2.00000
Explanation: merged array = [1,2,3] and median is 2.
Example 2:

Input: nums1 = [1,2], nums2 = [3,4]
Output: 2.50000
Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
Example 3:

Input: nums1 = [0,0], nums2 = [0,0]
Output: 0.00000

"""

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    i, j = 0, 0
    merged_arr = [] 
    total_ele = nums1.size + nums2.size 
    if total_ele.odd?
        required = [total_ele/2]
    else
        required = [(total_ele/2)-1, (total_ele/2)]
    end
    
    while(true) do
       if merged_arr.size > total_ele/2
           break
       end
        p [i,j, nums1[i], nums2[j]]
       if !nums1[i]
           p "nums1 empty"
           merged_arr += nums2[j..-1]
           break
       elsif !nums2[j]  
           merged_arr += nums1[i..-1]
           break
       elsif nums1[i] <= nums2[j]
           merged_arr << nums1[i]
           i += 1
       else
           merged_arr << nums2[j]
           j += 1
       end
    end
    (required.map{|ind| merged_arr[ind]}.reduce(:+))/required.size.to_f
end
