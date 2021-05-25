require 'rails_helper'

RSpec.describe Post, type: :model do

  it 'is invalid without a content' do
    post = Post.new()
    post.valid?
    expect(post.errors.messages[:content]).to include("を入力してください")
  end

  it 'is valid' do
    post = Post.new()
    post.valid?
    post.content = 'a' * 200
    expect(post).to be_valid
  end

  it 'is invalid' do
    post = Post.new()
    post.valid?
    post.content = 'a' * 201
    expect(post.errors[:content]).to include("を入力してください")
  end

end
