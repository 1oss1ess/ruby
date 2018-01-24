# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
more_books = [
  {:title => 'Out Among the Stars', :genre => 'Science fiction',
    :isbn_number =>'1302905538',:publish_date => '5-Dec-2017'},
  {:title => 'Jane Eyre', :genre => 'Drama',
    :isbn_number =>'0142437204',:publish_date => '4-Feb-2003'},
  {:title => 'The Two Towers', :genre => 'Action and Adventure',
     :isbn_number =>'0618346260',:publish_date => '5-Sep-2003'},
  {:title => 'Easy', :genre => 'Romance',
    :isbn_number =>'0425266745',:publish_date => '6-Nov-2012'},
  {:title => 'Rebecca', :genre => 'Mystery',
    :isbn_number =>'0316323705',:publish_date => '17-Dec-2013'},
  {:title => 'Dracula', :genre => 'Horror',
     :isbn_number => '0393970124',:publish_date => '12-May-1986'}
]
 
more_books.each do |book|
  Book.create!(book)
end