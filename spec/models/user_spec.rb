require 'rails_helper'

RSpec.describe User, type: :model do


  it 'is valid' do
    user = User.new()
    user.valid?
    user.password = '9' * 4
    expect(user).to be_valid
  end

  it 'is invalid' do
    user = User.new()
    user.valid?
    user.password = 'a' * 4
    expect(user.errors[:password]).to include("を入力してください")
  end

  it 'is invalid' do
    user = User.new()
    user.valid?
    user.password = 'a' * 5
    expect(user.errors[:password]).to include("を入力してください")
  end

  it 'is invalid' do
    user = User.new()
    user.valid?
    user.password = 'a' * 3
    expect(user.errors[:password]).to include("を入力してください")
  end

end
