class Addaddonstouser < ActiveRecord::Migration
  def up
  	add_column "Staff", :team, :integer
  	add_column "Staff", :real_name, :string
  	add_column "Staff", :rate_card, :decimal, :precision => 8, :scale => 2
  	add_column "Staff", :eft_percent, :float
  end

  def down
  	remove_column "Staff", :team
  	remove_column "Staff", :real_name
  	remove_column "Staff", :rate_card
  	remove_column "Staff", :eft_percent
  end
end
