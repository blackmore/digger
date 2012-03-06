class ProductionStatus < ActiveRecord::Base
  self.table_name = "Productionstatus"
  self.primary_key = "ProductionStatusID"
  alias_attribute :name, 'Name'
end
