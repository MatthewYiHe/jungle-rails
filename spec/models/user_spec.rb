require 'rails_helper'

describe "My Test Database" do
  before do
    User.create!(first_name: "Matt", last_name: "He",
                          email: "ANYthing", password: "1111",
                          password_confirmation: "1111")
  end
end

RSpec.describe User, type: :model do
   subject {
    described_class.new(first_name: "Anything", last_name: "Anything",
                      email: "anything1", password: "1111",
                      password_confirmation: "1111")
  }


  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid if password_confirmation is not same as password" do
    subject.password = "1234"
    expect(subject).to_not be_valid
  end

  it "is not valid if email already existed" do
    subject.email = "anything"
    expect(subject).to_not be_valid
    expect(subject.errors.full_messages).to include("Email has already been taken")
  end

  it "is not valid if password is less than 4 characters" do
    subject.password = "123"
    subject.password_confirmation = "123"
    expect(subject).to_not be_valid
  end

end
