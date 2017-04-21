require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Given I have a user' do
    subject { FactoryGirl.create :user }

    specify { expect(subject).to be_valid }

    it 'has a first name' do
      expect(subject.first_name).to eq('Freddie')
    end

    it 'has a last name' do
      expect(subject.last_name).to eq('Mercury')
    end

    context 'When I supply an empty first name' do
      before do
        subject.first_name = ''
      end

      it 'is not valid' do
        expect(subject).not_to be_valid
      end
    end

    context 'When I suuply an empty last name' do
      before do
        subject.last_name = ''
      end

      it 'is not valid' do
        expect(subject).not_to be_valid
      end
    end

  end

end
