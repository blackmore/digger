class Client < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Customer"
  self.primary_key = "CustomerID"
  alias_attribute :name, 'Name'
end
