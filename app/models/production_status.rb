class ProductionStatus < ActiveRecord::Base
  set_table_name "Productionstatus"
  set_primary_key "ProductionStatusID"
  alias_attribute :name, 'Name'
end
