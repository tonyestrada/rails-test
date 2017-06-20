require 'rails_helper'

RSpec.describe UserImporter do
  describe 'Given our database is empty' do
    it "is empty" do
      expect(User.count).to eq(0)
    end

    context 'When we import a csv file' do
      before do
        described_class.import!(csv_path)
      end

      let(:csv_path) { Rails.root.join('spec', 'fixtures', 'users.csv') }
      let(:first_user) { User.first }
      let(:second_user) { User.second }
      let(:third_user) { User.third }

      it "creates three users" do
        expect(User.count).to eq(3)
      end

      it "Imports Freddy Mercurie" do
        expect(first_user.first_name).to eq("Freddy")
        expect(first_user.last_name).to eq("Mercurie")
      end

      it "Imports Brian May" do
        expect(second_user.first_name).to eq("Brian")
        expect(second_user.last_name).to eq("May")
      end

      it "Imports Roger Taylor" do
        expect(third_user.first_name).to eq("Roger")
        expect(third_user.last_name).to eq("Taylor")
      end

    end
  end

end
