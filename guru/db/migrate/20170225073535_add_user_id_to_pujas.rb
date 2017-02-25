class AddUserIdToPujas < ActiveRecord::Migration[5.0]
  def change
    add_column :pujas, :user_id, :integer
  end
end
