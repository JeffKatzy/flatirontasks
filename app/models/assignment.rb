class Assignment < ApplicationRecord
  has_many :student_assignments
  has_many :students, through: :student_assignments
  has_many :cohort_assignments
  has_many :cohorts, through: :cohort_assignments
end
