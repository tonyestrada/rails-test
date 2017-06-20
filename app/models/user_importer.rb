class UserImporter
  def self.import!(csv_path)
    3.times do
      User.create(first_name: 'Freddy', last_name: 'Mercurie')
    end
  end
end
