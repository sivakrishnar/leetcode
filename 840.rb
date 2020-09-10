"""
840. Magic Squares In Grid
Easy

167

1249

Add to List

Share
A 3 x 3 magic square is a 3 x 3 grid filled with distinct numbers from 1 to 9 such that each row, column, and both diagonals all have the same sum.

Given an grid of integers, how many 3 x 3 "magic square" subgrids are there?  (Each subgrid is contiguous).

 

Example 1:

Input: [[4,3,8,4],
        [9,5,1,9],
        [2,7,6,2]]
Output: 1
Explanation: 
The following subgrid is a 3 x 3 magic square:
438
951
276

while this one is not:
384
519
762

In total, there is only one magic square inside the given grid.
Note:

1 <= grid.length <= 10
1 <= grid[0].length <= 10
0 <= grid[i][j] <= 15

"""


# @param {Integer[][]} grid
# @return {Integer}
def num_magic_squares_inside(grid)
    total = 0
    cols = grid[0].size-1
    rows = grid.size-1
    0.upto(rows-2) do |row|
       0.upto(cols-2) do |col|
          total += 1 if magic_square(grid, row, col) 
       end
    end
    total
end

def magic_square(grid, row, col)
   curr_sum = nil 
   ele = [] 
   row.upto(row+2) do |r|
      ele += grid[r][col..col+2]
      _sum = grid[r][col..col+2].reduce(:+)
      curr_sum = _sum unless curr_sum 
      return false if curr_sum and curr_sum != _sum 
   end
   return false if ele.select{|e| e > 0 and e < 10}.uniq.size < 9 
    
   col.upto(col+2) do |c|
      ele = [] 
      row.upto(row+2) do |r|
         ele << grid[r][c] 
      end
      return false if ele.reduce(:+) != curr_sum 
   end
    
   i, j = row, col 
   diag1 = []
   3.times do 
      diag1 << grid[i][j]
      i += 1
      j += 1
   end
   return false if curr_sum != diag1.reduce(:+)
    
   i, j = row, col+2 
   diag1 = []
   3.times do 
      diag1 << grid[i][j]
      i += 1
      j -= 1
   end
   return false if curr_sum != diag1.reduce(:+)
   
   true 
end
