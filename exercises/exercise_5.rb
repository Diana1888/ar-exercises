require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for the entire company: $#{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average revenue for the company: $#{average_revenue}"

big_stores = Store.where('annual_revenue > ?', 1000000).count
puts "Number of stores that are generating $1M or more in annual sales: #{big_stores}"