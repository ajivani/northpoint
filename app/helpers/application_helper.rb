module ApplicationHelper
  def title
    base_title = "Northpoint Canadian Company"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo(options={})
    logo = image_tag("northpoint_logo.jpg", :alt=>"NorthPoint Canadian", :class=>"round", :size => options[:size])
  end

end
