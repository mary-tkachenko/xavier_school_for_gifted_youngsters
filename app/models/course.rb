class Course < ApplicationRecord
    has_one :instructor
    has_many :cohorts
    belongs_to :schedule
end
