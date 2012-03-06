class Status < ActiveRecord::Base
  set_table_name "Status"
  set_primary_key "StatusID"
  alias_attribute :name, 'Name'
end
