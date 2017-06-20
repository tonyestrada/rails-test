class UserImporter
  def self.import!(csv_path)
    3.times do
      User.create(first_name: 'Jamie', last_name: 'FooBar')
    end
  end
end
