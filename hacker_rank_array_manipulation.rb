require 'pry'

n = 10
queries = [[1,5,3], [4,8,7], [6,9,1]]

# naive solution
def array_manipulation(n, queries)
    array = []
    (queries.length+1).times do |inner_num|
        index = inner_num-1
        if inner_num == 0 
            array = Array.new(n,0)
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


# second attempt
# def array_manipulation(n, queries)
#     inputs = Hash.new { |hash, key| hash[key] = [0,0]}
#     queries.each do |num|
#         a = num[0]
#         b = num[1]
#         k = num[2]
#         inputs[a][0] += k
#         inputs[b+1][1] -= k
#     end
#         curval = 0
#         curmax = -1
#         inputs.keys.sort.each do |key|
#         curval += inputs[key][0]
#         curmax = [curmax, curval].max
#         curval += inputs[key][1]
#     end
#     curmax
# end



puts array_manipulation(n, queries)

# = Array.new(insert_size) {|i| i = queries[index][2]}

# After contemplating the popular approach for solving this, here is how I wrapped my head around it.

# For every input line of a-b-k, you are given the range (a to b) where the values increase by k. So instead of keeping track of actual values increasing, just keep track of the rate of change (i.e. a slope) in terms of where the rate started its increase and where it stopped its increase. This is done by adding k to the "a" position of your array and adding -k to the "b+1" position of your array for every input line a-b-k, and that's it. "b+1" is used because the increase still applied at "b".

# The maximum final value is equivalent to the maximum accumulated "slope" starting from the first position, because it is the spot which incremented more than all other places. Accumulated "slope" means to you add slope changes in position 0 to position 1, then add that to position 2, and so forth, looking for the point where it was the greatest.