class Category < ActiveRecord::Base
	set_table_name "Category"
  set_primary_key "CategoryID"
  alias_attribute :name, 'Name'
end
