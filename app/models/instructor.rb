class Instructor < ApplicationRecord
    belongs_to :course
    has_many :schedules, dependent: :destroy
end