require 'pry'

n = 10
queries = [[1,5,3], [4,8,7], [6,9,1]]

def array_manipulation(n, queries)
    array = []
    (queries.length+1).times do |inner_num|
        index = inner_num-1
        if inner_num == 0 
            n.times {array << 0}
        else
            insert_size = array[queries[index][0]-1..queries[index][1]-1].length
            array[queries[index][0]-1..queries[index][1]-1] = Array.new(insert_size) {|i| i = queries[index][2]}
        end
        print array
    end
    
end

array_manipulation(n, queries)