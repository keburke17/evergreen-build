class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.date :start_date
      t.date :end_date
      t.date :individual_date
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday
      t.float :ce_hrs
      t.string :url
      t.string :term
      t.string :academic_group
      t.string :catalog_subject
      t.integer :catalog_number
      t.string :course_title
      t.string :component
      t.float :units
      t.string :recommended_gradeyear
      t.string :required_elective
      t.string :honors_ap_adv
      t.text :course_desc

      t.timestamps
    end
  end
end
