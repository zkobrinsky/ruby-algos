require 'pry'

class CountDerangementsRec
    def initialize(set_size)
        @set_size = set_size
    end

    def count_derangements(n = @set_size)
        if n == 1
            0
        elsif n == 2
            1
        else
            (n - 1) * (count_derangements(n-1) + count_derangements(n -2))
        end
    end

end

for i in 1..20
    result = CountDerangementsRec.new(i).count_derangements
    puts result
end