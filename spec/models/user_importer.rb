require 'rails_helper'

RSpec.describe UserImporter do
  describe 'Given our database is empty' do
    it "is empty" do
      expect(User.count).to eq(0)
    end
  end

end
