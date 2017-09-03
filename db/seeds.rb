# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#reference url: https://gist.github.com/arjunvenkat/1115bc41bf395a162084

require 'csv'
Course.destroy_all

csv_text = File.read(Rails.root.join('lib', 'seeds', 'uofm_test.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each {|row|
t = Course.new
t.start_date = row['start_date']
t.end_date = row['end_date']
t.individual_date = row['individual_date']
t.monday = row['monday']
t.tuesday = row['tuesday']
t.wednesday = row['wednesday']
t.thursday = row['thursday']
t.friday = row['friday']
t.saturday = row['saturday']
t.sunday = row['sunday']
t.ce_hrs = row['ce_hours']
t.url = row['url']
t.term = row['term']
t.academic_group = row['academic_group']
t.class_number = row['class_number']
t.catalog_subject = row['catalog_subject']
t.catalog_number = row['catalog_number']
t.course_title = row['course_title']
t.component = row['component']
t.units = row['units']
t.recommended_gradeyear = row['recommended_gradeyear']
t.required_elective = row['required_elective']
t.honors_ap_adv = row['honors_ap_adv']
t.course_desc = row['course_desc']
t.save
puts "#{t.course_title} saved"
}

puts "There are now #{Course.count} rows in the course table"
