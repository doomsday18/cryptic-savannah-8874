namespace :delete do
desc "Remove searches older then a day"
task :remove_old_searches => :environment do
  Animalisearch.delete_all ["created_at < ?", 1.day.ago]
  Vegetalisearch.delete_all["created_at < ?", 1.day.ago]
  Mineralisearch.delete_all["created_at < ?", 1.day.ago]
  Modulo1search.delete_all["created_at < ?", 1.day.ago]
  Modulo2search.delete_all["created_at < ?", 1.day.ago]
end
end
