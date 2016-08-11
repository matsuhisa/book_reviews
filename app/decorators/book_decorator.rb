module BookDecorator

  def amazon_image_url
    code = '09'
    size = 'MZZZZZZZ'
    "http://images-jp.amazon.com/images/P/#{asin}.#{code}.#{size}"
  end
end
