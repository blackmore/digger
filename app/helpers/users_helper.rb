module UsersHelper
	def get_user_tasks_infos(tasks)
		unless tasks.blank?
      total_tasks = tasks.length
      total_seconds = add_time_in_tasks(tasks)
      # hours, seconds = total_seconds.divmod(3600)
      # minutes = seconds.div(60)
      # "#{hours}h #{minutes}m"
      return (total_seconds/3600).round(1), total_tasks
		end
	end

  def add_time_in_tasks(tasks)
    duration = 0.0
    tasks.each do |task|
      start_time = task.start_of_task
      end_time = task.end_of_task
      seconds = start_time.business_time_until(end_time)
      duration = duration + seconds
    end
    duration
  end

  def utilisation_percentage(allocated, user, scope)
    hrs = available_hrs(user, scope)
    percentage = as_percentage(hrs, allocated)
    case percentage
    when 0..69
      "<span class='label'>#{percentage}%</span>".html_safe
    when 69..82
      "<span class='label label-warning'>#{percentage}%</span>".html_safe
    when 82..100
      "<span class='label label-success'>#{percentage}%</span>".html_safe
    when 100..20000
      "<span class='label label-important'>#{percentage}%</span>".html_safe
    else
      "#{percentage}"
    end
  end

  def available_hrs(user, scope)
    eft = user.eft_percent ||= 1.0
    (scope * (eft * 8)).to_i
  end

  def as_percentage(hrs, allocated)
    unless allocated.nil?
        presentage = allocated.to_f.send(:/, hrs).send(:*,100).round(0)
    end

  end


  def format_number_of_tasks(number)
    unless number.nil?
      number
    else
      "<span class='label label-info'>Not Assigned!</span>".html_safe
    end
  end
end
