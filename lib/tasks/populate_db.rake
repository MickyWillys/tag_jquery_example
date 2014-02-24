namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    populateUser if User.count < 10
    populateSkills if Skill.count <
     50
    
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

def populateSkills
  @users = User.all
  @users.each do |user|


    tit = Faker::Lorem.words(3).to_s
    des = Faker::Lorem.sentences(3).to_s

    r= rand(10)

    r.times do
      tit = Faker::Lorem.words(3).to_s
      des = Faker::Lorem.sentences(3).to_s
      todo_user = Skill.create!(user_id: user.id ,title: tit,
                          description: des)
    end
  end
end