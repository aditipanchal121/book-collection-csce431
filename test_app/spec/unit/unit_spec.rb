# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Harry Potter',
      author: 'JK Rowling',
      price: 12.99,
      publishedDate: Date.today)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid if price is not a number' do
    subject.price = "testvalue"
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without a published date' do
    subject.publishedDate = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a published date in datetime format' do
    subject.publishedDate = "testvalue"
    expect(subject).not_to be_valid
  end
end