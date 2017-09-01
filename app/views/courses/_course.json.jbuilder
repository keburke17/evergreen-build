json.extract! course, :id, :start_date, :end_date, :individual_date, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :ce_hrs, :url, :term, :academic_group, :catalog_subject, :catalog_number, :course_title, :component, :units, :recommended_gradeyear, :required_elective, :honors_ap_adv, :course_desc, :created_at, :updated_at
json.url course_url(course, format: :json)
