require 'csv'

class UserImporter
  def self.import!(csv_path)
    CSV.foreach(csv_path, headers: true, encoding: 'bom|utf-8') do |row|
      User.create(row.to_h)
    end
  end
end
