require 'pry'

def hourglassSum(arr)
    sums = []
    row = 0
    while row < arr.length-2 do 
        column = 0
        while column < arr[0].length-2 do 
            sums.push(arr[row][column..column+2].sum + arr[row+1][column+1] + arr[row+2][column..column+2].sum)
            column+=1
        end
        row+=1
    end
    sums.max()
end

# arr = [[1, 1, 1, 0, 0, 0], 
#        [0, 1, 0, 0, 0, 0], 
#        [1, 1, 1, 0, 0, 0], 
#        [0, 0, 2, 4, 4, 0], 
#        [0, 0, 0, 2, 0, 0], 
#        [0, 0, 1, 2, 4, 0]]

arr = [[-1, -1, 0, -9, -2, -2],
       [-2, -1, -6, -8, -2, -5],
       [-1, -1, -1, -2, -3, -4],
       [-1, -9, -2, -4, -4, -5],
       [-7, -3, -3, -2, -9, -9],
       [-1, -3, -1, -2, -4, -5]]

puts hourglassSum(arr)