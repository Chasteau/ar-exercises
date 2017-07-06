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
@store1.employees.create(first_name: "Man", last_name: "Boy", hourly_rate: 76)
@store1.employees.create(first_name: "Girl", last_name: "Woman", hourly_rate: 90)

@store2.employees.create(first_name: "Whale", last_name: "Fish", hourly_rate: 60)
@store2.employees.create(first_name: "Dog", last_name: "Owl", hourly_rate: 76)
@store2.employees.create(first_name: "Ink", last_name: "Pen", hourly_rate: 90)

