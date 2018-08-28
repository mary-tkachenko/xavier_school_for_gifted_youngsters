class Student < ApplicationRecord
    belongs_to :cohort
    validates :first_name, presence: true
end
