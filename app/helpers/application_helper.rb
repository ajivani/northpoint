module ApplicationHelper
  def title
    base_title = "NorthPoint Canadian"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    logo = image_tag("logo.png", :alt=>"NorthPoint Canadian", :class=>"round")
  end

end
