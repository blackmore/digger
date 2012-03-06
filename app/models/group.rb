class Group < ActiveRecord::Base
  self.table_name = "Staffgroup"
  self.primary_key = "GroupID"
  alias_attribute :name, 'Name'
end
