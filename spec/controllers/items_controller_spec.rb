require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe 'GET #show' do
    it "responds successfully" do
      get :show, params: {  id: id }
      expect(response).to be_success
    end

    it "returns a 200 response" do
      get :show, params: {id: @item.id}
      expect(response).to have_http_status "200"
    end
  end

end