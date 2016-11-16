# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User(id: integer, name: string, email: string, password_digest: string, created_at: datetime, updated_at: datetime)
User.create(name: "gerald", email: "gerald@example.com", password: "123wqeasd", password_confirmation: "123qweasd")
User.create(name: "bob", email: "bob@bob.com", password: "123123123", password_confirmation: "123123123")
User.create(name: "tim", email: "tim@tim.com", password: "123123123", password_confirmation: "123123123")

# Session(id: integer, consumer_id: integer, producer_id: integer, approval: boolean)
Session.create(consumer: User.first, producer: User.last)