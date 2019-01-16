# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
role_admin = Role.create(name: "admin")
role_user  = Role.create(name: "user")

admin = User.create(first_name: "Admin", last_name: "Admin", email: "admin@example.com", password: '123123', password_confirmation: '123123')
admin.add_role :admin
admin.save

User.create([
		{first_name: "user", last_name: "admin", email: "user@gmail.com", password: '123123', password_confirmation: '123123'},
		{first_name: "user", last_name: "jack", email: "jack@gmail.com", password: '123123', password_confirmation: '123123'},
		{first_name: "joo", last_name: "root", email: "joe@gmail.com", password: '123123', password_confirmation: '123123'},
		{first_name: "joe", last_name: "Gale", email: "koe@gmail.com", password: '123123', password_confirmation: '123123'},
		{first_name: "king", last_name: "jack", email: "king@gmail.com", password: '123123', password_confirmation: '123123'},
		{first_name: "king", last_name: "jack", email: "kingg@gmail.com", password: '123123', password_confirmation: '123123'},
		{first_name: "joe", last_name: "root", email: "root@gmail.com", password: '123123', password_confirmation: '123123'}])
