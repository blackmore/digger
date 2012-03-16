module ProductionsHelper
	def status(state)
		case state
    when 1
      '<span class="label label-success">Active</span>'.html_safe
    when 2
      '<span class="label">Closed</span>'.html_safe
    end
	end

  def deadline(deadline_date)
    if deadline_date
      today = Date.today
     # case date
     # when  date <= Date.today
     #   "<span class='label label-important'>#{date}</span>".html_safe
     # end

     case today
     when (deadline_date)..(deadline_date + 200.days)
       "<span class='label label-important'>#{deadline_date}</span>".html_safe
      when (deadline_date - 4.day)..(deadline_date - 1.days)
       "<span class='label label-warning'>#{deadline_date}</span>".html_safe
     else
      "<span class='label'>#{deadline_date}</span>".html_safe
     end
      # if date <= Date.today - 4.days
      #   "<span class='label label-important'>#{date}</span>".html_safe
      # elsif date <= Date.today
      #   "<span class='label'>#{date}</span>".html_safe
      # end
      # elsif (date - 1.day) <= (Date.today - 4.days)
      # "<span class='label label-warning'>#{date}</span>".html_safe
      # elsif date <= (Date.today - 5.days)
      # "<span class='label'>#{date}</span>".html_safe
      # end
    end
  end

  def workflow(tasks)
    task_string = ""
    if tasks
      tasks.delete_if {|task| task.function_id >= 18 } 
      tasks.each do |task|
        if task.user.try(:name)
          task_string << case task.status_id
        when 1 
          "<a href='#' rel='tooltip' title='#{task.user.try(:name)}'><span class='label'>#{task.function_id}</span></a>"
        when 2
          "<a href='#' rel='tooltip' title='#{task.user.try(:name)}'><span class='label label-warning '>#{task.function_id}</span></a>"
        when 3
          "<a href='#' rel='tooltip' title='#{task.user.try(:name)}'><span class='label label-success '>#{task.function_id}</span></a>"
        else
          ""
        end
        end
      end
    end
    if task_string == ""
      "<span class='label label-info'>Not Assigned!</span>".html_safe
    else
      task_string.html_safe
    end
    
  end
end
