module ApplicationHelper
  def page_title(title = '')
    base_title = '富・名声・力'
    title.empty? ? base_title : "#{title} | #{base_title}"
  end
end
