namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    populateUser if User.count < 10
    
  end
end 

def populateUser
  15.times do |n|
    myname = Faker::Name.first_name + " " + Faker::Name.last_name
    
    user_db = User.create!(name: myname)

    r= rand(10)

    r.times do
      user_id= user_db.id 
      tit = Faker::Lorem.words(3).to_s
      des = Faker::Lorem.sentences(3).to_s
      todo_user = Todo.create!(user_id: user_id ,title: tit,
                          description: des)
    end
  end
end 

