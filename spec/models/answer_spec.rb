require 'rails_helper'

RSpec.describe Answer, type: :model do
  
  it 'is invalid without a content' do
    post = Answer.new()
    post.valid?
    expect(post.errors.messages[:content]).to include("を入力してください")
  end

end
