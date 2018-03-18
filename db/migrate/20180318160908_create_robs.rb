class CreateRobs < ActiveRecord::Migration[5.1]
  def change
    create_table :robs do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
