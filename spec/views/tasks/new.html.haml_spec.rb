require 'spec_helper'

describe "tasks/new" do
  before(:each) do
    assign(:task, stub_model(Task,
      :name => "MyString",
      :description => "MyText",
      :percentage_complete => "9.99"
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_path, "post" do
      assert_select "input#task_name[name=?]", "task[name]"
      assert_select "textarea#task_description[name=?]", "task[description]"
      assert_select "input#task_percentage_complete[name=?]", "task[percentage_complete]"
    end
  end
end
