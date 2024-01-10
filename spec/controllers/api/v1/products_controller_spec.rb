# spec/controllers/api/v1/products_controller_spec.rb
require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
        byebug
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  # Add more tests for other actions as needed

end
