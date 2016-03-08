require "rails_helper"

describe SessionsController do
  describe "#new" do
    it "fetches login page" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "#create" do
    context "on invalid username-password" do
      it "redirects back" do
        request.env['HTTP_REFERER'] = 'http://localhost:3000/sessions/new'
        post :create, user: { username: "hey", password: "pas" }
        expect(response).to redirect_to(:back)
      end
    end

    context "on valid username-password" do
      it "redirects to main page" do
        User.create({
                      first_name: "test",
                      last_name: "McTesterston",
                      username: "testing",
                      password: "password",
                    })
        post :create, { user: { username: "testing", password: "password" }}
        expect(response).to redirect_to("/")
      end

      it "sets session[:user_id]" do
        user = User.create({
                      first_name: "test",
                      last_name: "McTesterston",
                      username: "testing",
                      password: "password",
                    })
        post :create, { user: { username: "testing", password: "password" }}
        expect(session[:user_id]).to eq(user.id)
      end
    end
  end

  describe "#destroy" do
    it "deletes session" do
      session[:user_id] = "test"
      get :destroy
      expect(session[:user_id]).to be_nil
    end
  end
end