# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#user1 = User.create name: "user1", email: "user1@correo.cl", password: "user123"
#user2 = User.create name: "user2", email: "user2@correo.cl", password: "user234"
#user3 = User.create name: "user3", email: "user3@correo.cl", password: "user345"

user1.tickets.create title:"ticket1", description: "ticket1-user1"
user1.tickets.create title:"ticket2", description: "ticket2-user1"

user2.tickets.create title:"ticket3", description: "ticket3-user2"
user2.tickets.create title: "ticket4", description: "ticket4-user2"

user3.tickets.create title:"ticket5", description: "ticket5-user3"
user.tickets.create title:"ticket6", description: "ticket6-user3"
