# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Nahit', email: 'abc@abc.com', password: 'password')
User.create(username: 'Danny', email: 'def@xxx.com', password: 'password')
User.create(username: 'Ivan', email: '123@hotmail.com', password: 'password')
User.create(username: 'Nico', email: '456@flatiron.com', password: 'password')

Feedback.create()