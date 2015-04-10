require 'rails_helper'

RSpec.describe "AuthenticationPages", type: :request do
  subject {page}
  describe "signin page" do
    before { visit signin_path}
    it {should have_select('h1', text:'Sign in')}
    it {should have_title('Sign in')}
  end
end
