require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      titulo: "MyString",
      descricao: "MyText"
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input[name=?]", "task[titulo]"

      assert_select "textarea[name=?]", "task[descricao]"
    end
  end
end
