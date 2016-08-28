module ReviewDecorator

  def description_output
    pipeline = HTML::Pipeline.new([
      HTML::Pipeline::MarkdownFilter,
      HTML::Pipeline::BookFilter
    ])
    result = pipeline.call(description)
    result[:output].to_s.html_safe
  end

end
