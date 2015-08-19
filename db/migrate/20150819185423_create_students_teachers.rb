require_relative '../config'

class CreateStudentsTeachers < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students_teachers, id: false do |s|
    	s.belongs_to  :teacher, index: true
        s.belongs_to  :student, index: true
        s.timestamps  null: false
    end
  end
end