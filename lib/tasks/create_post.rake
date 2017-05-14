namespace :abc do

  desc "Used to generate a new daily log"

  task :create_post => :environment do

    User.find_each do |currentUser|

      starting_date = currentUser.start_date.to_datetime


      if Date.today >= starting_date && Date.today.on_weekday?
        if currentUser.posts.count.zero?
          starting_date.upto(Date.today) { |date| currentUser.generate_post if date.on_weekday? }
        #the generate_post method is in user model
        else
          currentUser.generate_post
        end
      end
    end
    puts "It actually worked yo!"
  end
end