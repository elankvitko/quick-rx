class RemoveCodeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :signup_code
  end
end
