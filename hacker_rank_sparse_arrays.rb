require 'pry'
# https://www.hackerrank.com/challenges/sparse-arrays/problem?h_r=next-challenge&h_v=zen

strings = ['ab', ' ab', 'abc']
queries = ['ab', ' abc', ' bc']

def match_strings(strings,queries)
    queries.map do |q|
        strings.count {|s| s.strip == q.strip}
    end

end

print match_strings(strings,queries)