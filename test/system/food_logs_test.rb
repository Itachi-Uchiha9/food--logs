require "application_system_test_case"

class FoodLogsTest < ApplicationSystemTestCase
  setup do
    @food_log = food_logs(:one)
  end

  test "visiting the index" do
    visit food_logs_url
    assert_selector "h1", text: "Food logs"
  end

  test "should create food log" do
    visit food_logs_url
    click_on "New food log"

    fill_in "Calories", with: @food_log.calories
    fill_in "Carbohydrates", with: @food_log.carbohydrates
    fill_in "Fats", with: @food_log.fats
    fill_in "Meal type", with: @food_log.meal_type
    fill_in "Proteins", with: @food_log.proteins
    click_on "Create Food log"

    assert_text "Food log was successfully created"
    click_on "Back"
  end

  test "should update Food log" do
    visit food_log_url(@food_log)
    click_on "Edit this food log", match: :first

    fill_in "Calories", with: @food_log.calories
    fill_in "Carbohydrates", with: @food_log.carbohydrates
    fill_in "Fats", with: @food_log.fats
    fill_in "Meal type", with: @food_log.meal_type
    fill_in "Proteins", with: @food_log.proteins
    click_on "Update Food log"

    assert_text "Food log was successfully updated"
    click_on "Back"
  end

  test "should destroy Food log" do
    visit food_log_url(@food_log)
    click_on "Destroy this food log", match: :first

    assert_text "Food log was successfully destroyed"
  end
end
