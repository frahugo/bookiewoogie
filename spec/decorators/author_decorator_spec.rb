require 'spec_helper'

describe AuthorDecorator do
  describe '#name' do
    it "returns first and last name" do
      author = Author.new(first_name: 'Hugo', last_name: 'Frappier').decorate
      author.name.should == 'Hugo Frappier'
    end
  end
end
