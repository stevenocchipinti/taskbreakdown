require 'spec_helper'

describe "tasks/index" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :name => "Name",
        :description => "MyText",
        :percentage_complete => "0.50"
      ),
      stub_model(Task,
        :name => "Name",
        :description => "MyText",
        :percentage_complete => "0.50"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "li strong", :text => "Name".to_s, :count => 2
    assert_select "li span", :text => "50%".to_s, :count => 2
  end
end
