require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddTeacherIdToStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
  # db:create
    add_column :students, :teacher_id, :integer
  end
end
