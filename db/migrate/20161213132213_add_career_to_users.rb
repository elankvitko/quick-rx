class AddCareerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :career_account, :boolean, default: false, null: false
  end
end
