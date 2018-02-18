module ApplicationHelper
  def page_title(title) 
    if title.empty? 
      "Rails Portfolio"
    else 
      "Rails Portfolio" + " | #{title}" 
    end 
  end 
end
