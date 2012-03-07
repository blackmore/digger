class Status < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Status"
  self.primary_key = "StatusID"
  alias_attribute :name, 'Name'
end
