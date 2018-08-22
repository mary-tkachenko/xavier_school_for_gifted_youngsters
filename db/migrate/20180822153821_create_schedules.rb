class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :day_of_week
      t.integer :time
      t.integer :course_id
      t.integer :cohort_id
      t.integer :instructor_id

      t.timestamps
    end
  end
end
