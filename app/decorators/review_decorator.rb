module ReviewDecorator

  def description_output
    filter = HTML::Pipeline::MarkdownFilter.new(description)
    filter.call.html_safe
  end

end
