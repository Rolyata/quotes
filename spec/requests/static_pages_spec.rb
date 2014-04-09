require 'spec_helper'

describe "Static pages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }

		it { should have_title('Quotes') }
	end

	describe "About page" do
		before { visit about_path }

		it { should have_title('About') }
		it { should have_selector('h1', text: 'About the Quotes') }
		it { should have_selector('h1', text: 'About the Application') }
		it { should have_selector('h1', text: 'About the Author') }
	end

	describe "Feedback page" do
		before { visit feedback_path}

		it { should have_title('Feedback') }
		it { should have_selector('h1', text: 'Feedback') }
	end

	it "should have the right links on the layout" do
		visit root_path
		click_link "Register"
		expect(page).to have_title('Register')
		click_link "About"
		expect(page).to have_title('About')
		click_link "Feedback"
		expect(page).to have_title('Feedback')
	end
end