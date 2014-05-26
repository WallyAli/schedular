require "spec_helper"
require 'factory_girl'

describe ParentMailer do
  describe "registration_confirmation" do
    parent = FactoryGirl.build(:parent)
    user = FactoryGirl.create(:user)
    let(:mail) { ParentMailer.registration_confirmation(parent) }

    it "renders the headers" do
      expect(mail.subject).to eq("Registration confirmation")
      expect(mail.to).to eq([parent.email])
      expect(mail.from).to eq(["abdishwak@gmail.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end
end
