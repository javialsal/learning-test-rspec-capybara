module Features
  def create_todo(todo_title)
    click_on "Add a new todo"
    fill_in "Title", with: todo_title
    click_on "Submit"
  end

  def display_todo(todo_title)
    have_css ".todos li", text: todo_title
  end

  def display_completed_todo(todo_title)
    have_css ".todos li.completed", text: todo_title
  end
end

describe Todo, "#completed!" do
  it "update completed_at" do
    todo = Todo.create!(completed_at: nil)

    todo.completed!

    todo.reload

    expect(todo).to be_completed
  end
end
