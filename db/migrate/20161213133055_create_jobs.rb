class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :position, null: false
      t.references :job_category, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
