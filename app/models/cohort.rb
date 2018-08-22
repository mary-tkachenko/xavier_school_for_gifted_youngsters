class Cohort < ApplicationRecord
    has_many :courses, :through => :schedules
    has_many :students
    belongs_to :schedule
end
