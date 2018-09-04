class Cohort < ApplicationRecord
    has_many :schedules, dependent: :destroy
    has_many :courses, :through => :schedules
    has_many :students, dependent: :destroy
end
