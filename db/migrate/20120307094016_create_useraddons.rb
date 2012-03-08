class CreateUseraddons < ActiveRecord::Migration
  def change
    create_table :useraddons do |t|
      t.string :firstname
      t.string :lastname
      t.integer :team_id
      t.integer :user_id
      t.decimal :rate_card, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
