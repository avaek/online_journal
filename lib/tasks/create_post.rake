namespace :abc do

  desc "Used to generate a new daily log"

  task :create_post => :environment do

    User.find_each do |currentUser|

      starting_date = currentUser.start_date


      if Date.today >= starting_date && Date.today.on_weekday? && !currentUser.admin && !currentUser.supervisor
        
        #if no current posts, retroactively generate thems. if current posts, just generates todays post
        if currentUser.posts.count.zero?
          starting_date.upto(Date.today) { |date| currentUser.generate_post(date) if date.on_weekday? }
        #
        else
          currentUser.generate_post(Date.today)
        end
      end
    end
    puts "It actually worked yo!"
  end
end