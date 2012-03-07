class Timetrackingtype < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Timetrackingtype"
  self.primary_key = "TypeID"
  alias_attribute :name, 'Name'
end
