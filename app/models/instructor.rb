#main goal
#create assignments(hours, etc.) for a specific cohort


#dashboard, view stats of students 
#has cohort finished the assignment?

class Instructor < ApplicationRecord
  has_many :instructor_cohorts
  has_many :cohorts, through: :instructor_cohorts

  def all_students
    self.cohorts.joins(:students)
  end
end


# Instead of all students, can probably write, has many students through cohorts as association.
