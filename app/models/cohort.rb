class Cohort < ApplicationRecord
    has_many :courses, :through => :schedules
    has_many :students
    has_many :schedules
end
