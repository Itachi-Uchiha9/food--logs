json.extract! food_log, :id, :meal_type, :calories, :proteins, :carbohydrates, :fats, :created_at, :updated_at
json.url food_log_url(food_log, format: :json)
