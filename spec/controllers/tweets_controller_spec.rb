require 'rails_helper'
describe TweetsController do

  let(:user) { create(:user) }
  
  describe 'GET #index' do
    context "ログインしている場合" do
      before do
        session[:user_id]
        get :index
      end

      it "リクエストが成功すること" do
        expect(response.status).to eq 200
      end

      it "@tweetに正しい値が入っていること" do
        tweets = create_list(:tweet, 3)
        get :index
        expect(assigns(:tweets)).to match(tweets.sort{ |a, b| b.created_at <=> a.created_at })
      end

      it "index.html.erbに遷移すること" do
        get :index
        expect(response).to render_template :index
      end
    end
  end

  describe 'GET #new' do
    it "new.html.erbに遷移すること" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "@tweetに正しい値が入っていること" do
      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(assigns(:tweet)).to eq tweet
    end

    it "edit.html.erbに遷移すること" do
      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(response).to render_template :edit
    end
  end
end