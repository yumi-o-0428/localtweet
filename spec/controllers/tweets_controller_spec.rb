require 'rails_helper'
describe TweetsController do

  let(:user) { create(:user) }
  
  describe 'GET #index' do
    context ログインしている場合 do
      before do
        session[:user_id]
        get :index
      end

      it 'リクエストが成功すること' do
        expect(response.status).to eq 200
      end

      it '@tweetに正しい値が入っていること' do
        tweets = create_list(:tweet, 3)
        get :index
        expect(assigns(:tweets)).to match(tweets.sort{ |a, b| b.created_at <=> a.created_at })
      end

      it 'index.html.erbに遷移すること' do
        get :index
        expect(response).to render_template :index
      end
    end
  end


  describe 'GET #new' do
    it 'new.html.erbに遷移すること' do
      get :new
      expect(response).to render_template :new
    end
  end


  describe 'GET #show' do
    it 'show.html.erbに遷移すること' do
      tweet = create(:tweet)
      get :show, params: { id: tweet }
      expect(response).to render_template :show
    end
  end


  describe 'GET #edit' do
    it '@tweetに正しい値が入っていること' do
      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(assigns(:tweet)).to eq tweet
    end

    it 'edit.html.erbに遷移すること' do
      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(response).to render_template :edit
    end
  end


  describe 'POST #create' do
    let!(:params) { { user: user.id, tweet: attributes_for(:tweet)} }

    context 'ログインしている場合' do
      before do
        session[:user_id]
      end

      context '保存に成功した場合' do
        subject {
          post :create,
          params: params
        }
      end

      context '保存に失敗した場合' do
        let(:invalid_params) { { user_id: user.id, tweet: attributes_for(:tweet, spa_name: nil, area: nil, spring_quality: nil, image: nil) } }

        subject {
          post :create,
          params: invalid_params
        }

        it 'tweetを保存しないこと' do
          expect{ subject }.not_to change(Tweet, :count)
        end

        it 'new.html.hamlに遷移すること' do
          subject
          expect(response).to render_template :new
        end
      end
    end
  end

end