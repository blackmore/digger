class Function < ActiveRecord::Base
	establish_connection "platform_#{Rails.env}"
  self.table_name = "Function"
  self.primary_key = "FunctionID"
  alias_attribute :name, 'Name'
end
