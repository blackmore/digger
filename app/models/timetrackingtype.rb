class Timetrackingtype < ActiveRecord::Base
  self.table_name = "Timetrackingtype"
  self.primary_key = "TypeID"
  alias_attribute :name, 'Name'
end
