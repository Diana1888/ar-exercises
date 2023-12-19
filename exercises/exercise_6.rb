require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Liza", last_name: "Morin", hourly_rate: 50)
@store1.employees.create(first_name: "Russ", last_name: "Black", hourly_rate: 80)
@store1.employees.create(first_name: "Anna", last_name: "Smith", hourly_rate: 60)


@store2.employees.create(first_name: "Rachel", last_name: "Green", hourly_rate: 70)
@store2.employees.create(first_name: "Monica", last_name: "Geller", hourly_rate: 75)
@store2.employees.create(first_name: "Chandler", last_name: "Bing", hourly_rate: 90)
@store2.employees.create(first_name: "Joey", last_name: "Tribbiani", hourly_rate: 60)


