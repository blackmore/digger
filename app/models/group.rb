class Group < ActiveRecord::Base
  set_table_name "Staffgroup"
  set_primary_key "GroupID"
  alias_attribute :name, 'Name'
end
