require 'csv'

class UserImporter
  def self.import!(csv_path)
    CSV.foreach(csv_path) do |row|
      binding.pry
    end
  end
end
