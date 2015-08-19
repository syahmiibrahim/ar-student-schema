require_relative '../config'

class CreateTeachers < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :teachers do |s|
    	s.string :first_name
    	s.string :last_name
    	s.string :gender
        s.date   :birthday  
    	s.string :email
    	s.string :phone
    	s.timestamps null: false
    end
  end
end