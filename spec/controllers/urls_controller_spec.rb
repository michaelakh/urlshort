require 'rails_helper'

RSpec.describe UrlsController, type: :controller do

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
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      url = Url.create! valid_attributes
      get :show, params: {id: url.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end 
  end

  describe "GET #edit" do
    it "returns a success response" do
      url = Url.create! valid_attributes
      get :edit, params: {id: url.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Url" do
        expect {
          post :create, params: {url: valid_attributes}, session: valid_session
        }.to change(Url, :count).by(1)
      end

      it "redirects to the created url" do
        post :create, params: {url: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Url.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {url: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {url:'http://www.bing.co.uk'}
      }

      it "updates the requested url" do
        url = Url.create! valid_attributes
        put :update, params: {id: url.to_param, url: new_attributes}, session: valid_session
        url.reload
        expect(url.attributes).to include( { "url" => "http://www.bing.co.uk" } )
      end

      it "redirects to the url" do
        url = Url.create! valid_attributes
        put :update, params: {id: url.to_param, url: valid_attributes}, session: valid_session
        expect(response).to redirect_to(url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        url = Url.create! valid_attributes
        put :update, params: {id: url.to_param, url: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested url" do
      url = Url.create! valid_attributes
      expect {
        delete :destroy, params: {id: url.to_param}, session: valid_session
      }.to change(Url, :count).by(-1)
    end

    it "redirects to the urls list" do
      url = Url.create! valid_attributes
      delete :destroy, params: {id: url.to_param}, session: valid_session
      expect(response).to redirect_to(urls_url)
    end
  end

end
