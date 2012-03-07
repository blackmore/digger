class ProductionStatus < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Productionstatus"
  self.primary_key = "ProductionStatusID"
  alias_attribute :name, 'Name'
end
