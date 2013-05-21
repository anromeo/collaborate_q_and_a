require 'spec_helper'

feature 'a user signs in' do
	let!(:user){Factory(:user, :email => "jumperbarn@gmail.com")}

	scenario "a user signs in" do
		visit '/'
		click_link 'Sign In'
		fill_in "Email", :with => "exampleplace@gmail.com"
		fill_in "Password", :with => "password"
		click_button 'Sign in'
		page.should have_content("Signed in successfully.")
	end
end