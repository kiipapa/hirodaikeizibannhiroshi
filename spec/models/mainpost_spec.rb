require 'rails_helper'

RSpec.describe Mainpost, type: :model do
  it 'is invalid without a content' do
    post = Mainpost.new()
    post.valid?
    expect(post.errors.messages[:content]).to include("を入力してください")
  end

  it 'is valid' do
    post = Mainpost.new()
    post.valid?
    post.content = 'a' * 200
    expect(post).to be_valid
  end

  it 'is invalid' do
    post = Mainpost.new()
    post.valid?
    post.content = 'a' * 201
    expect(post.errors[:content]).to include("を入力してください")
  end
end
