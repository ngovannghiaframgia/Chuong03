module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
  	base_title = "Ruby on Rails Tutorial Sample App"
  	base_title = I18n.t "Ruby_on_Rails_Tutorial_Sample_App"
  	if page_title.empty?
  		base_title
  	else
  		page_title + " | " + base_title
  	end
  end
end
