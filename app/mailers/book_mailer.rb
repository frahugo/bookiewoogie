class BookMailer < ActionMailer::Base
  default from: "from@example.com"

  helper :books

  def recommendation(book)
    @book = book

    attachments.inline['cover.jpg'] = File.read(book.cover_image.icon.path)

    mail to: "to@example.org"
  end
end
