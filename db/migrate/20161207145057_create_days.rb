class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :day, null: false
      t.string :hourbegins, null: false
      t.string :hourend, null: false

      t.timestamps null: false
    end
  end
end
