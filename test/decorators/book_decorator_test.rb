require 'test_helper'

class BookDecoratorTest < ActiveSupport::TestCase
  def setup
    @book = Book.new.extend BookDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
