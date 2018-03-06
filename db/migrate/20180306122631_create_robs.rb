class CreateRobs < ActiveRecord::Migration[5.1]
  def change
    create_table :robs do |t|
      t.text :content

      t.timestamps
    end
  end
end
