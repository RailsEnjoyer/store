require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'valid with correct attributes' do
    product = Product.new(name: "Test Product", price: 10.0, description: "some description")
    expect(product).to be_valid
  end

  it 'invalid without the name' do
    product = Product.new(price: 10.0, description: "some description")
    expect(product).to_not be_valid
  end
end
