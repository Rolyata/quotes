require 'spec_helper'

describe "UserPages" do

	subject { page }

	describe "register page" do
		before { visit register_path }

		it { should have_title('Register') }
		it { should have_selector('h1', text: 'Register') }
	end
end
