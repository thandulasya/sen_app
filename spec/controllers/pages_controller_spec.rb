require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
 
    
    it "online class of  ruby and rails" do
      get : home
      expect(response).to have_selector("title",
              : content =>"Rub on rails | home ")
    end

 
    it " should do non link " do
      get : home
      expect(response).body_not =~/<body>\s*<\/body>/

  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end


    it "online class of  ruby and rails" do
      get : contact
      expect(response).to have_selector("title",
              : content =>"Rub on rails| contact")
    end



  end

   describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end


    it "online class of  ruby and rails" do
      get : about
      expect(response).to have_selector("title",
              : content =>"Rub on rails | about")
    end

  end

end
