class Cohort < ApplicationRecord
    has_many :courses
    has_many :students
    belongs_to :schedule
end
