class User < ActiveRecord::Base
  set_table_name "Staff"
  alias_attribute :name, 'Name'
  
end
