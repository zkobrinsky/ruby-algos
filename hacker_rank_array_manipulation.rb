require 'pry'

n = 10
queries = [[1,5,3], [4,8,7], [6,9,1]]

def array_manipulation(n, queries)
    array = []
    (queries.length+1).times do |inner_num|
        index = inner_num-1
        if inner_num == 0 
            array = Array.new(n) {|i| i = 0}
        else
            insert_size = array[queries[index][0]-1..queries[index][1]-1].length
            array.each_with_index do |element, inner_index|
                range = Array(queries[index][0]-1..queries[index][1]-1)
                if range.include? inner_index
                    array[inner_index] += queries[index][2]
                end
            end
        end
    end
    array.max()
end

puts array_manipulation(n, queries)

# = Array.new(insert_size) {|i| i = queries[index][2]}