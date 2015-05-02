# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#books

Book.delete_all
Book.create(bookType: 'Book', authorFirst: "Herbert", authorLast:"Schildt", title:'Programming in Java', genre:"Education", year: 2014, isbn: 9780071809252)
Book.create(bookType: 'Manga', authorFirst: "Eiichiro", authorLast:"Oda", title:'One Piece Volume 41', genre:"Fantasy", year: 2013, isbn: 9780071809252)
Book.create(bookType: 'Comic', authorFirst: "Stan", authorLast:"Lee", title:'Iron Man', genre:"Adventure", year: 1980, isbn: 9780071809252)
