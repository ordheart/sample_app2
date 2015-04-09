require 'rails_helper'

RSpec.describe "UserPages", type: :request do
 subject {page}
  describe "signup page" do
    before { visit signup_path}
    it { should hava_selector('h1', text: 'Sign up') }
    it { should have_title("Ruby on Rails Tutorial Sample APP | Sign up")}
  end
end
