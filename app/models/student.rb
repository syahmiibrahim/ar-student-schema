require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  has_many :students_teachers, :foreign_key => :student_id
  has_many :teachers, through: :students_teachers

  validates :email, uniqueness: true, format: { with: /\A\w+@\w+(.\w+)*(\.\w{2,})\z/ }
  validates :age, numericality: { greater_than: 4}
  validate :phone_validation?

  attr_accessor :birthday

  def name
	"#{first_name} #{last_name}"
  end

  def age
	now = Date.today
	age = now.year - self.birthday.year - 1
  end

  def phone_validation?
  	if self.phone.scan(/\d+/).join.length < 10
  		errors.add(:phone, "Should contain at least 10 digits")
  	end
  end
end