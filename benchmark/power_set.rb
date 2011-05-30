#!/usr/bin/env ruby

# There are two methods described here for calculating the power set of
# a set.
#
# First is using a nice Ruby implementation from
# http://rosettacode.org/wiki/Power_Set#Ruby
#
# Second is using a binary count method.
#

require 'pp'
require 'benchmark'

array = [1,2,3,4,5,6,7,8,9,0,10,11,12,13,14,15,16,17,18,19]

puts "set size: #{array.size}"

inject = Benchmark.measure do

  array.inject([[]]) { |ps,item|
     ps + ps.map { |e| e + [item] }
  }

end
puts "inject: #{inject}"

binary = Benchmark.measure do

  out = []
  (2**array.size).times do |i|
    a = []
    binary = i.to_s(2).rjust(array.size, '0')
    binary.size.times do |j|
      a << array[j] if binary[j] == '1'
    end
    out << a
  end

end
puts "binary: #{binary}"
