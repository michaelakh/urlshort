require 'rails_helper'

RSpec.describe Url, type: :model do
  let(:valid_attributes) {
    {slug:'http://localhost:3000/U2nb1m5D',visits:10,snapshot:'',url:'http://www.google.co.uk'}
  }
  #describe Url do
  #  it "has a valid factory" do
  #    create(:url).should be_valid
  #  end
    
  #  it "is invalid without a url" do
  #    build(:url, url: nil).should_not be_valid
  #  end
  #end
end
