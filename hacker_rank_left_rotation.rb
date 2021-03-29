require 'pry'
# https://www.hackerrank.com/challenges/array-left-rotation/problem

arr = *(1..5)

# first method
def rotate_left(d,arr)
    d.times do 
        arr << arr[0]
        arr.shift
    end
    arr
end


print rotate_left(4,arr)