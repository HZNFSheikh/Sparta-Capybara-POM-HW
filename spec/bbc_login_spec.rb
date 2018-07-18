require 'spec_helper'

describe 'Testing the BBC' do


  context 'Testing login' do

    it "it should respond with success when we login with a valid email and password" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_login.fill_email
      @bbc_site.bbc_login.fill_password
      @bbc_site.bbc_login.click_submit

      end

      #Tests for incorrect data

  it "should respond with error message if email and password are empty" do
    @bbc_site = BBC_Site.new
    @bbc_site.bbc_homepage.visit_home_page
    @bbc_site.bbc_homepage.click_sign_in_link
    @bbc_site.bbc_login.click_submit
    expect(@bbc_site.bbc_login.missing_field_error).to be true
  end


  it "should respond with error message if email field is empty and password field is selected" do
    @bbc_site = BBC_Site.new
    @bbc_site.bbc_homepage.visit_home_page
    @bbc_site.bbc_homepage.click_sign_in_link
    @bbc_site.bbc_login.click_email
    @bbc_site.bbc_login.click_password
    expect(@bbc_site.bbc_login.missing_field_error).to be true
  end


 it "should respond with error message if non registered email is used" do
   @bbc_site = BBC_Site.new
   @bbc_site.bbc_homepage.visit_home_page
   @bbc_site.bbc_homepage.click_sign_in_link
   @bbc_site.bbc_login.fill_wrong_email
   @bbc_site.bbc_login.fill_password
   @bbc_site.bbc_login.click_submit
   expect(@bbc_site.bbc_login.wrong_email_error).to be true
 end

 it "should respond with error message if username has a full stop" do
  @bbc_site = BBC_Site.new
  @bbc_site.bbc_homepage.visit_home_page
  @bbc_site.bbc_homepage.click_sign_in_link
  @bbc_site.bbc_login.fill_wrong_username
  @bbc_site.bbc_login.click_password
  expect(@bbc_site.bbc_login.wrong_user_error).to be true
end

it "should respond with error message if email has an incorrect symbol or character" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_login.fill_wrong_char_email
      @bbc_site.bbc_login.click_password
      expect(@bbc_site.bbc_login.wrong_char_error).to be true
    end





    end

end
