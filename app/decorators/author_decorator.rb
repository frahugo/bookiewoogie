class AuthorDecorator < Draper::Decorator
  delegate_all
  decorates_finders

  def name
    [first_name, last_name].join(' ')
  end

  def bio
    h.simple_format model.bio
  end
end
