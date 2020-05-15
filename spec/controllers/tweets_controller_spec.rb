require 'rails_helper'

  describe TweetsController do
    describe 'GET #new' do
      it "new.html.erbに遷移すること" do
        get :new
        expect(response).to render_template :new
      end
    end
  
end