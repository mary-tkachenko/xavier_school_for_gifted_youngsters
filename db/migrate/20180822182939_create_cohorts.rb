class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.integer :auditorium
      t.integer :start_date
      t.integer :end_date
      t.integer :students_number

      t.timestamps
    end
  end
end
