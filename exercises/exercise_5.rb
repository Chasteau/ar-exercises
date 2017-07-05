require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
all_stores = Store.all
sum = 0
all_stores.each {|store| sum += store.annual_revenue }
puts "Total Revenue of #{sum} for #{all_stores.count} stores"

avg = sum/all_stores.count
puts "Average Revenue of #{avg} across all stores"

mill_plus = Store.all.where('annual_revenue > 1000000')
puts "There are #{mill_plus.count} stores with $1M in annual revenue"