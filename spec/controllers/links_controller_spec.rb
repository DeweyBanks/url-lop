require 'rails_helper'


RSpec.describe LinksController, type: :controller do


  let(:valid_attributes) {
    {given_url: "http://www.deweybanks.com/"}
  }

  describe "GET #index" do
    it "returns a success response" do
      link = Link.create! valid_attributes
      get :index
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      link = Link.create! valid_attributes
      get :show, {:slug => link.to_param}
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, {}
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      link = Link.create! valid_attributes
      get :edit, {:slug => link.to_param}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Link" do
        expect {
          post :create, {:link => valid_attributes}
        }.to change(Link, :count).by(1)
      end

      it "redirects to the created link" do
        post :create, {:link => valid_attributes}
        expect(response).to redirect_to(Link.last)
      end
    end
  end

end
