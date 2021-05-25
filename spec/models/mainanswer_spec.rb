require 'rails_helper'

RSpec.describe Mainanswer, type: :model do
  
  it 'is invalid without a content' do
    post = Mainanswer.new()
    post.valid?
    expect(post.errors.messages[:content]).to include("を入力してください")
  end

end
