class Productionstatus < ActiveRecord::Base
  set_table_name "Productionstatus"
  set_primary_key "StatusID"
  alias_attribute :name, 'Name'
end
