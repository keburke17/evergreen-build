# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
Course.destroy_all

csv_text = File.read(Rails.root.join('lib', 'seeds', 'uofm_test.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each {|row|
t = Course.new
t.name = row['Course Title']
t.subject = row['Subject']
t.number = row['Catalog Nbr']
t.units = row['Units']
t.save
puts "#{t.name} saved"
}

puts "There are now #{Course.count} rows in the course table"
