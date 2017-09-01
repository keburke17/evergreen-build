require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { academic_group: @course.academic_group, catalog_number: @course.catalog_number, catalog_subject: @course.catalog_subject, ce_hrs: @course.ce_hrs, component: @course.component, course_desc: @course.course_desc, course_title: @course.course_title, end_date: @course.end_date, friday: @course.friday, honors_ap_adv: @course.honors_ap_adv, individual_date: @course.individual_date, monday: @course.monday, recommended_gradeyear: @course.recommended_gradeyear, required_elective: @course.required_elective, saturday: @course.saturday, start_date: @course.start_date, sunday: @course.sunday, term: @course.term, thursday: @course.thursday, tuesday: @course.tuesday, units: @course.units, url: @course.url, wednesday: @course.wednesday } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { academic_group: @course.academic_group, catalog_number: @course.catalog_number, catalog_subject: @course.catalog_subject, ce_hrs: @course.ce_hrs, component: @course.component, course_desc: @course.course_desc, course_title: @course.course_title, end_date: @course.end_date, friday: @course.friday, honors_ap_adv: @course.honors_ap_adv, individual_date: @course.individual_date, monday: @course.monday, recommended_gradeyear: @course.recommended_gradeyear, required_elective: @course.required_elective, saturday: @course.saturday, start_date: @course.start_date, sunday: @course.sunday, term: @course.term, thursday: @course.thursday, tuesday: @course.tuesday, units: @course.units, url: @course.url, wednesday: @course.wednesday } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
