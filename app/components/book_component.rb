# frozen_string_literal: true

class BookComponent < ViewComponent::Base
  def initialize(books:)
    @books = books
  end

end
