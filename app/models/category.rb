class Category < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Category"
  self.primary_key = "CategoryID"
  alias_attribute :name, 'Name'
end
