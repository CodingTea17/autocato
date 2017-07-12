require 'rails_helper'

RSpec.describe BookmarksController, type: :controller do
  before(:each) { log_in create(:user) }

  let(:valid_attributes) do
    attributes_with_fks_for :bookmark, user: current_user
  end

  let(:invalid_attributes) do
    attributes_with_fks_for :bookmark, :invalid, user: current_user
  end

  describe 'GET #show' do
    it 'returns a success response' do
      bookmark = create :bookmark
      get :show, params: { id: bookmark.to_param }
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Bookmark' do
        expect do
          post :create, params: { bookmark: valid_attributes }
        end.to change(Bookmark, :count).by(1)
      end
    end

    context 'with invalid params' do
      xit "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { bookmark: invalid_attributes.merge(url: nil) }
        expect(response).to be_success
        expect(flash[:alert]).to include 'url'
      end
    end
  end

  describe 'PUT #update' do
    context 'with invalid params' do
      xit "returns a success response (i.e. to display the 'edit' template)" do
        bookmark = create :bookmark
        put :update, params: {
                id: bookmark.to_param,
          bookmark: invalid_attributes.merge(url: nil)
        }
        expect(response).to be_success
        expect(flash[:alert]).to include 'url'
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested bookmark' do
      bookmark = create :bookmark
      expect do
        delete :destroy, params: { id: bookmark.to_param }
      end.to change(Bookmark, :count).by(-1)
    end
  end
end
