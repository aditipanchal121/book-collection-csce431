# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'title', with: 'harry potter'
      fill_in 'author', with: 'JK Rowling'
      fill_in 'price', with: '$12.00'
      fill_in 'published Date', with: '02/20/2001'
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('harry potter')
    end

    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'title', with: 'harry potter'
      fill_in 'author', with: 'JK Rowling'
      fill_in 'price', with: '$12.00'
      fill_in 'published Date', with: '02/20/2001'
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('harry potter')
    end
end