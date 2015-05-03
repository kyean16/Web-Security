# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#books

Book.delete_all
Book.create(bookType: 'Book', authorFirst: "Herbert", authorLast:"Schildt", title:'Programming in Java', genre:"Education", year: 2014, isbn: "9780071809252")
Book.create(bookType: 'Manga', authorFirst: "Eiichiro", authorLast:"Oda", title:'One Piece Volume 41', genre:"Fantasy", year: 2013, isbn: "9780071809250")
Book.create(bookType: 'Comic', authorFirst: "Stan", authorLast:"Lee", title:'Iron Man', genre:"Adventure", year: 1980, isbn: "0080071809251")
Book.create(bookType: 'Comic', authorFirst: "Stan", authorLast:"Lee", title:'Fantastic 4', genre:"Adventure", year: 1956, isbn: "9780001809252")
Book.create(bookType: 'Novel', authorFirst: "Dan", authorLast:"Brown", title:'Da Vinci Code', genre:"Thriller", year: 2006, isbn: "9780071809000")
Book.create(bookType: 'Novel', authorFirst: "Dan", authorLast:"Brown", title:'Illuminati', genre:"Thriller", year: 2008, isbn: "9780071809200")
Book.create(bookType: 'Novel', authorFirst: "J.K", authorLast:"Rowling", title:'Harry Potter and the Deathly Hollows', genre:"Adventure", year: 2009, isbn: "1080071809252")
Book.create(bookType: 'Comic', authorFirst: "Eiichiro", authorLast:"Oda", title:'One Piece Volume 41', genre:"Fantasy", year: 2013, isbn: "9780071809250")
Book.create(bookType: 'Novel', authorFirst: "Tim", authorLast:"Cook", title:'Apple Rock', genre:"Biography", year: 2010, isbn: "9780024809250")
Book.create(bookType: 'TextBook', authorFirst: "Khadija", authorLast:"Stewarts", title:'Web Security', genre:"Education", year: 2014, isbn: "9180071809252")
Book.create(bookType: 'TextBook', authorFirst: "Doug", authorLast:"Harms", title:'Harms', genre:"Education", year: 2013, isbn: "9240071809250")
Read.delete_all

