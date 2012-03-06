class Productionstatus < ActiveRecord::Base
  self.table_name = "Productionstatus"
  self.primary_key = "StatusID"
  alias_attribute :name, 'Name'
end
