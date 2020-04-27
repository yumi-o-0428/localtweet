class UsersController < ApplicationController
  
  def show
    @user = User.find_by(id: params[:id])
    @tweets = @user.tweets.includes(:tags).order(created_at: :desc)
    @favorites = Favorite.where(user_id: @user.id).order(created_at: :desc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])

  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.save
      flash[:notice]="プロフィールを編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/#{@user.id}/edit")
    end
  end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:session][:email],password: params[:session][:password])
    if @user
      session[:user_id]=@user.id
      flash[:notice]="ログインしました"
      redirect_to("/tweets/index")
    else
      @error_message="メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("users/login_form")
    end
  end

  def logout
    session[:user_id]=nil
    flash[:notice]="ログアウトしました"
    redirect_to("/")
  end


private
def user_params
  params.require(:user).permit(:name,:email,:image_name,:password)
end

end
