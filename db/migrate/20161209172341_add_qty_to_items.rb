class AddQtyToItems < ActiveRecord::Migration
  def change
    add_column :items, :qty, :string, default: '1', null: false
  end
end
