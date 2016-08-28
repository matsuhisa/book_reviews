require 'html/pipeline'

class HTML::Pipeline::BookFilter < HTML::Pipeline::Filter
  include ::ActionView::Helpers::TagHelper
  include Rails.application.routes.url_helpers

  attr_accessor :output_buffer

  def call

    html.gsub(/\[book:(\d*)\]/) do |_|
      book_id = $1
      book = Book.find_by(id: book_id)
      book.extend(BookDecorator)

      image_tag = content_tag('div', tag('img', src: book.amazon_image_url))
      title_tag = content_tag('div', class: 'bar') do
        book.title
      end
      content_tag('a', image_tag + title_tag, {href: book_path(book), class: "foo"})
    end
  end
end
