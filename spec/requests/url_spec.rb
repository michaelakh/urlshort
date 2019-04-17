require 'rails_helper'


# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe UrlsController, type: :request do

  # This should return the minimal set of attributes required to create a valid
  # Url. As you add validations to Url, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {slug:'http://localhost:3000/U2nb1m5D',visits:10,snapshot:'',url:'http://www.google.co.uk'}
  }

  let(:invalid_attributes) {
    {slug:10,visits:'sexy',snapshot:10,url:'test'}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UrlsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      url = Url.create! valid_attributes
      get urls_path, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      url = Url.create! valid_attributes
      get url_path(url.id)
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get new_url_path, params: {}
      expect(response).to be_success
    end 
  end

  describe "GET #edit" do
    it "returns a success response" do
      url = Url.create! valid_attributes
      get edit_url_path(id:url.id)
      expect(response).to be_success
    end
  end


   #describe "#search" do
   # it 'tests search responds with status 200' do
      
   #   get search_path, params: { "distance" => "5", "postcode" => "ha8 6ew"}
   #   expect(response).to have_http_status(200)
   #   
   # end
    
  #end
end
