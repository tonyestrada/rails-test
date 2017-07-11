namespace :import do

  desc 'Imports users from csv file'
  task :users => [:environment] do
    file_name = ENV['FILE_NAME']
    UserImporter.import!(file_name)
  end

end
