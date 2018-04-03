# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    User.create!(email: 'user2@gmail.com', password: 'user2*')
    User.create!(email: 'user3@yahoo.com', password: 'user3*')
    User.create!(email: 'user4@att.com', password: 'user4*')
    User.create!(email: 'user5@rca.com', password: 'user5*')
    Posting.create!(name: "Cut my Lawn for 10 weeks.", user_id: 2, open: true, close: false, responded_to: false)
    Posting.create!(name: "Redo my kitchen.", user_id: 1, open: true, close: false, responded_to: false)
    Posting.create!(name: "Drive my dad to the hospital every Tuesdays at 10am.", user_id: 2, open: true, close: false, responded_to: false)
    Posting.create!(name: "Sit my children this Saturday between 7pm and 11pm", user_id: 4, open: true, close: false, responded_to: false)
