require 'spec_helper'

describe "attendances/index" do
  before(:each) do
    assign(:attendances, [
      stub_model(Attendance,
        :child_id => "Child"
      ),
      stub_model(Attendance,
        :child_id => "Child"
      )
    ])
  end

  it "renders a list of attendances" do
    render
    assert_select "tr>td", :text => "Child".to_s, :count => 2
  end
end
