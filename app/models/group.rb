class Group < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "StaffGroup"
  self.primary_key = "GroupID"
  alias_attribute :name, 'Name'
end
