# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def section(label, path, options = {})
    if path == request.fullpath
      content_tag :span,  label, :class => "active #{controller.class}"
    else
      link_to label, path, options
    end
  end
end
