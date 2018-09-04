class Instructor < ApplicationRecord
    belongs_to :course
    has_many :schedules, dependent: :destroy
    validates :salary, numericality: { greater_than: 0 }

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end