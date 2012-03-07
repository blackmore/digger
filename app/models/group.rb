class Group < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Staffgroup"
  self.primary_key = "GroupID"
  alias_attribute :name, 'Name'
end
