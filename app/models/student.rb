class Student < ApplicationRecord
    belongs_to :cohort
    validates :first_name, presence: true
    validates :age, numericality: { only_integer: true, less_than_or_equal_to: 150 }
end
