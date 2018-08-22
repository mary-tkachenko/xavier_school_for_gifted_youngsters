class Schedule < ApplicationRecord
    has_many :instructors
    has_many :cohorts
    has_many :courses
end
