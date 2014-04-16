require 'spec_helper'

describe "attendances/new" do
  before(:each) do
    assign(:attendance, stub_model(Attendance,
      :child_id => "MyString"
    ).as_new_record)
  end

  it "renders new attendance form" do
    render

    assert_select "form[action=?][method=?]", attendances_path, "post" do
      assert_select "input#attendance_child_id[name=?]", "attendance[child_id]"
    end
  end
end
