require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others' todos" do
    Todo.create!(title: "Buy milk", email: "other_user@example.com")

    sign_in_as "user@example.com"

    expect(page).not_to display_todo "Buy milk"
    # Method called from todo_helper.rb
  end
end
