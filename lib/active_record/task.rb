# monkey patched the ActiveRecord::Base type of the duration on the
# Task model changing it from Time which causes problems when time is over 
# 24 hours and replacing it with string.

class Task < ActiveRecord::Base

  establish_connection "platform_#{Rails.env}"
  self.table_name = "Task"
  class << columns_hash['Duration']
    def type
      :string
    end
  end
end