module ApplicationHelper

  # Return a title on a per page basis.
  def full_title(title)
    base_title = "Ruby on Rails Tutorial Sample App"
    title.nil? ? base_title : "#{base_title} | #{title}"
  end
end
