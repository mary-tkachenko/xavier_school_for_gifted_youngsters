class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.integer :age
      t.string :abilities
      t.integer :salary
      t.string :photo_url
      t.string :education
      t.integer :class_id

      t.timestamps
    end
  end
end
