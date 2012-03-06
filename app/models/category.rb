class Category < ActiveRecord::Base
  self.table_name = "Category"
  self.primary_key = "CategoryID"
  alias_attribute :name, 'Name'
end
