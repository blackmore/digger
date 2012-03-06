class Timetrackingtype < ActiveRecord::Base
  set_table_name "Timetrackingtype"
  set_primary_key "TypeID"
  alias_attribute :name, 'Name'
end
