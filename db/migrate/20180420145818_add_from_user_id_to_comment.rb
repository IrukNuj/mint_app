class AddFromUserIdToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :from_user_id, :string
  end
end
