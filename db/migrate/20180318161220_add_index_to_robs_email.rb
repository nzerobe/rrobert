class AddIndexToRobsEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :robs, :email, unique: true
  end
end
