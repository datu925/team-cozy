require "rails_helper"

describe UsersController do
  describe "#new" do
    it "fetches register page" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "#create" do
    context "on invalid password" do
      it "redirects back" do
        request.env['HTTP_REFERER'] = 'http://localhost:3000/users/new'
        post :create, user: { first_name: "Jim", last_name:"Jem", username: "hey", password: "pas" }
        expect(response).to redirect_to(:back)
      end
    end

    context "on valid password" do
      it "redirects to main page" do
        post :create, { user: { first_name: "Jim", last_name:"Jem", username: "new_test", password: "password" }}
        expect(response).to redirect_to("/")
      end
    end
  end
end