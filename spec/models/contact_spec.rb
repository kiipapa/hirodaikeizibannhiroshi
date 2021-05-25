require 'rails_helper'

RSpec.describe Contact, type: :model do
  it 'is invalid without a content' do
    c = Contact.new()
    c.valid?
    expect(c.errors.messages[:content]).to include("を入力してください")
  end
end
