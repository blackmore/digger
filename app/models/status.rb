class Status < ActiveRecord::Base
  self.table_name = "Status"
  self.primary_key = "StatusID"
  alias_attribute :name, 'Name'
end
