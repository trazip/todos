require 'rails_helper'

feature 'User completes a todo' do 
  scenario 'successfully' do
    sign_in

    create_todo 'Buy milk'

    click_on 'Mark complete'
    
    expect(page).to display_todo_completed 'Buy milk'
  end
end