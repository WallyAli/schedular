require 'spec_helper'

describe "attendances/show" do
  before(:each) do
    @attendance = assign(:attendance, stub_model(Attendance,
      :child_id => "Child"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Child/)
  end
end
