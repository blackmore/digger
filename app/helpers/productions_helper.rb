module ProductionsHelper
	def status(state)
		case state
    when 1
      '<span class="label label-success">Active</span>'.html_safe
    when 2
      '<span class="label">Closed</span>'.html_safe
    end
	end

  def deadline(date)
    if date
      if date < Date.today
      "<span class='label label-important'>#{date}</span>".html_safe
    else
      date
    end
    end
  end
end
