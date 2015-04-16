class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :student_name
      t.string :number
      t.text :address
      t.string :ph_no

      t.timestamps null: false
    end
  end
end
