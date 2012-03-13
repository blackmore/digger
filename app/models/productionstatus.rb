class Productionstatus < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "ProductionStatus"
  self.primary_key = "StatusID"
  alias_attribute :name, 'Name'
end
