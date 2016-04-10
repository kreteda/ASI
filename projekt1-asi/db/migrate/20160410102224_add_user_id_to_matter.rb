class AddUserIdToMatter < ActiveRecord::Migration
  def change
    add_column :matters, :user_id, :integer
  end
end
