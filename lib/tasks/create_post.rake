namespace :abc do 
	desc "Used to generate a new daily log"

task :create_post => :environment do

	User.find_each do |currentUser|
     starting_date = currentUser.start_date

     Post.create!(content: "RAKED", user: currentUser) if Date.today >= starting_date && Date.today.on_weekday?
    end

puts "It worked yo"  	
end
	
end