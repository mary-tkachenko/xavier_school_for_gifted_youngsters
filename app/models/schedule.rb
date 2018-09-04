class Schedule < ApplicationRecord
    belongs_to :instructors
    belongs_to :cohort
    belongs_to :course
end
