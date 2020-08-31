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
    total = (nums1.size + nums2.size)
    n1, n2 = 0,0
    merged_arr = []
    while(true) do
        break if !nums1[n1] and !nums2[n2]
        if nums1[n1] and nums2[n2]
            if nums1[n1] <= nums2[n2]
                merged_arr << nums1[n1]
                n1 += 1
            else
                merged_arr << nums2[n2]
                n2 += 1
            end
        elsif nums1[n1]
            merged_arr << nums1[n1]
            n1 += 1
        else
            merged_arr << nums2[n2]
            n2 += 1
        end
    end
    p total, merged_arr
    if total.even?
        (merged_arr[total/2] + merged_arr[(total/2)-1])/2.0
    else
        merged_arr[total/2].to_f
    end
end
