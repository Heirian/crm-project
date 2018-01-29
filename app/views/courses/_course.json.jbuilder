# frozen_string_literal: true

json.extract! course, :id, :product_id, :course_load, :created_at, :updated_at
json.url course_url(course, format: :json)
