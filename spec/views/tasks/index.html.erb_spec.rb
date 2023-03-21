require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        titulo: "Titulo",
        descricao: "MyText"
      ),
      Task.create!(
        titulo: "Titulo",
        descricao: "MyText"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Titulo".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
