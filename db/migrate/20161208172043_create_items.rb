class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :link
      t.references :user, index: true, null: false
      t.references :pharmacy, index: true, null: false

      t.timestamps null: false
    end
  end
end
