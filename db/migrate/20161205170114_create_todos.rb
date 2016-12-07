class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string            :name, null: false
      t.text              :body, null: false
      t.boolean           :complete, null: false
      t.references        :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
