class AddCodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :signup_code, :string, default: '', null: false
  end
end
