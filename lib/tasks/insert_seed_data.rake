namespace :insert_seed_data do
  task :execute => :environment do
    FoodBusinessPermit.insert_seed_data
  end
end
