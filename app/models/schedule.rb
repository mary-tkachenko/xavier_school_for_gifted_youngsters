class Schedule < ApplicationRecord
    has_many :instructors
    belongs_to :cohort
    belongs_to :course
end
