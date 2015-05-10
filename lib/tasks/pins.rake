namespace :pins do
  desc "TODO"
  task delete_07_days_old: :environment do
  	Pins.where(['created_at < ?', 07.days.ago]).destroy_all
  end
end
