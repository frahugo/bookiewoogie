class BookDecorator < Draper::Decorator
  delegate_all

  decorates_association :authors

  def authors_list
    authors.map(&:name).join(', ')
  end

  def price
    h.number_to_currency(model.price).gsub /\.00$/, ''
  end

  def summary
    h.simple_format model.summary
  end

end
