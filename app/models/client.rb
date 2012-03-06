class Client < ActiveRecord::Base
  set_table_name "Customer"
  set_primary_key "CustomerID"
  alias_attribute :name, 'Name'
end
