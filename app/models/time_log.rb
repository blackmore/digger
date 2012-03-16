class TimeLog < ActiveRecord::Base
	establish_connection "time_log_#{Rails.env}"
  
end
