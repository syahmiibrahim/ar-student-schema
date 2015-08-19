require_relative '../../db/config'

class Teacher < ActiveRecord::Base
	has_many :students_teachers, foreign_key: :teacher_id
	has_many :students, through: :students_teachers

	validates :email, uniqueness: true, format: {with: /\A\w+@\w+(.\w+)*(\.\w{2,})\z/, on: :create}
end #End of teacher class