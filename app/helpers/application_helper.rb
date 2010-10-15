module ApplicationHelper
  def title
    base_title = "NorthPoint Canadian"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
