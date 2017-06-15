require 'rails_helper'

RSpec.describe UserImporter do
  describe 'Given our database is empty' do
    it "is empty" do
      expect(User.count).to eq(0)
    end

    describe 'When we import a csv file' do
      before do
        described_class.import!(csv_path)
      end

      let(:csv_path) { Rails.root.join('spec', 'fixtures', 'users.csv') }

      it "creates three users" do
        expect(User.count).to eq(3)
      end

    end
  end

end
