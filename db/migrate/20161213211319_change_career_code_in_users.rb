class ChangeCareerCodeInUsers < ActiveRecord::Migration
  def change
    change_column :users, :career_account, :string
  end
end
