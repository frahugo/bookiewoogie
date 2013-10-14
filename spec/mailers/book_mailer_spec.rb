require "spec_helper"

describe BookMailer do
  describe "new_book" do
    let(:mail) { BookMailer.new_book }

    it "renders the headers" do
      mail.subject.should eq("New book")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
