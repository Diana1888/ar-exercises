require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true
end


class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :must_carry_apparel,

def must_carry_apparel
  unless mens_apparel || womens_apparel
    errors.add(:base, "Store must carry at least one men's or women's apparel")
  end
end

end

puts "Please enter store's name"
user_store = gets.chomp
puts "Store: #{user_store}"

user_store = Store.create(name: user_store)

if user_store.save
  puts "Store #{user_store} was created "
else 
  puts "Error saving store"
  user_store.errors.full_messages.each do |message|
    puts "#{message}"
  end
end
