class Client < ActiveRecord::Base
  self.table_name = "Customer"
  self.primary_key = "CustomerID"
  alias_attribute :name, 'Name'
end
