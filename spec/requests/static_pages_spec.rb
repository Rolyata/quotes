require 'spec_helper'

describe "Home page" do

	it "should have the title 'Home'" do
		visit '/static_pages/home'
		expect(page).to have_title('Quotes')
	end
end

describe "About page" do

	it "should have the title 'About'" do
		visit '/static_pages/about'
		expect(page).to have_title('About')
	end

	it "should have the content 'About the Quotes'" do
		visit '/static_pages/about'
		expect(page).to have_content('About the Quotes')
	end

	it "should have the content 'About the Application'" do
		visit '/static_pages/about'
		expect(page).to have_content('About the Application')
	end

	it "should have the content 'About the Author'" do
		visit '/static_pages/about'
		expect(page).to have_content('About the Author')
	end
end