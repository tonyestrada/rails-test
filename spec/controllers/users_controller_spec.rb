require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  context 'Given we already have users' do
    let!(:freddie) {
      FactoryGirl.create :user, first_name: 'Freddie', last_name: 'Mercury'
    }
    let!(:brian) {
      FactoryGirl.create :user,  first_name: 'Brian', last_name: 'May'
    }
    let!(:roger) {
      FactoryGirl.create :user,  first_name: 'Roger', last_name: 'Taylor'
    }

    context 'Given that I want to get all users' do
      before do
        get :index
      end

      it 'get Freddie' do
        expect(assigns(:users)).to include(freddie)
      end

      it 'get Brian' do
        expect(assigns(:users)).to include(brian)
      end

      it 'get Roger' do
        expect(assigns(:users)).to include(roger)
      end

      it 'knows there are three users' do
        expect(assigns(:user_count)).to eq(3)
      end

    end
  end

end
