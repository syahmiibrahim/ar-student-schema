require_relative '../app/models/teacher'
require 'faker'

module TeachersImporter
  def self.import
  	9.times do 
  	  Teacher.create(
  	  	first_name: Faker::Name.first_name,
        last_name:  Faker::Name.last_name,
    	gender:     ["m","f"].sample
        birthday:   Faker::Date.between(50.years.ago, 20.years.ago),  
    	email:      Faker::Internet.email, 
    	phone:      Faker::PhoneNUmber.cell_phone 
    	)
  		
  	end
  	
end